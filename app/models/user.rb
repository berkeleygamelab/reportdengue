# == Schema Information
#
# Table name: users
#
#  id                         :integer          not null, primary key
#  username                   :string(255)
#  password_digest            :string(255)
#  auth_token                 :string(255)
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  email                      :string(255)
#  password_reset_token       :string(255)
#  password_reset_sent_at     :datetime
#  phone_number               :string(255)
#  points                     :integer          default(0), not null
#  house_id                   :integer
#  profile_photo_file_name    :string(255)
#  profile_photo_content_type :string(255)
#  profile_photo_file_size    :integer
#  profile_photo_updated_at   :datetime
#  is_verifier                :boolean          default(FALSE)
#  is_fully_registered        :boolean          default(FALSE)
#  is_health_agent            :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :auth_token, :phone_number, :profile_photo
  has_secure_password
  has_attached_file :profile_photo, :styles => { :small => "60x60>", :large => "150x150>" }, :default_url => 'default_images/profile_default_image.png', :storage => STORAGE, :s3_credentials => S3_CREDENTIALS
  
  # validates
  validates :username, :uniqueness => true
  validates :username, :format => { :with => USERNAME_REGEX, :message => "should only contain letters, numbers, or .-+_@, and have between 5-15 characters" }
  validates :password, :length => { :minimum => 4, :message => "should contain at least 4 characters" }, :if => "id.nil? || password"
  validates :points, :numericality => { :only_integer => true }
  validates :phone_number, :numericality => true, :length => { :minimum => 10, :maximum => 20 }, :allow_nil => true
  validates :email, :format => { :with => EMAIL_REGEX }, :allow_nil => true
  validates :email, :uniqueness => true, :unless => "email.nil?"
  validates :house_id, presence: true, on: :update
#  validates :is_fully_registered, :presence => true
#  validates :is_community_coordinator, :presence => true
#  validates :is_community_coordinator, :uniquness => { :scope => ??? } TODO: only want one coordinator per community
#  validates :is_health_agent, :presence => true

  # filters
  before_create { generate_token(:auth_token) }

  # associations
  has_many :created_reports, :class_name => "Report", :foreign_key => "reporter_id"
  has_many :claimed_reports, :class_name => "Report", :foreign_key => "claimer_id"
  has_many :eliminated_reports, :class_name => "Report", :foreign_key => "eliminator_id"
  has_many :feeds
  has_many :posts
  has_many :prize_codes
  has_many :badges
  has_many :prizes
  has_many :created_group_buy_ins, :class_name => "GroupBuyIn"
  has_many :participated_group_buy_ins, :through => :buy_ins, :class_name => "GroupBuyIn"
  
  belongs_to :house

  # associations helpers
  def location
    house && house.location
  end

  def neighborhood
    location && location.neighborhood
  end

  accepts_nested_attributes_for :house, :allow_destroy => true
  attr_accessible :house_attributes

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def nearby_reports(n = 10)
    if house.nil? or house.location.nil?
      nil
    else
      lat = house.location.latitude
      lon = house.location.longitude
      dist_str = "((locations.latitude - #{lat}) * (locations.latitude - #{lat}) + (locations.longitude - #{lon}) * (locations.longitude - #{lon}))"
      Report.joins(:location).order(dist_str).limit(n)
    end
  end

  def neighbors(n = 10)
    if house.nil? or house.location.nil?
      nil
    else
      lat = house.location.latitude
      lon = house.location.longitude
      dist_str = "((locations.latitude - #{lat}) * (locations.latitude - #{lat}) + (locations.longitude - #{lon}) * (locations.longitude - #{lon}))"
      User.joins(:house => :location).where("houses.id != ?", house.id).order(dist_str).limit(n)
    end
  end
  
  def reports
    Report.includes(:reporter, :claimer, :eliminator, :location).where("reporter_id = ? OR claimer_id = ? OR eliminator_id = ?", id, id, id).reorder(:updated_at).reverse_order.uniq
  end

  def buy_prize(prize_id)
    @prize = Prize.find(prize_id)
    return false if self.points < @prize.cost or not @prize.in_stock
    @prize.decrease_stock(1)
    self.points -= @prize.cost
    if @prize.is_badge?
      @prize.give_badge(self.id)
    else
      @prize.generate_prize_code(self.id)
    end
  end

  def join_group_buy_in(group_buy_in_id)
    @group = GroupBuyIn.find(group_buy_in_id)
    return false if self.points < @group.points_per_person
    self.points -= @group.points_per_person
    return true
  end

end
