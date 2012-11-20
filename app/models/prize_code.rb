# == Schema Information
#
# Table name: prize_codes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  prize_id   :integer
#  expire_by  :datetime
#  code       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# TODO: Portuguese, testing

class PrizeCode < ActiveRecord::Base
  attr_accessible :code, :expire_by, :prize_id, :user_id
  belongs_to :user
  belongs_to :prize

  def self.send_no(phone_number)
  	@account_sid = 'AC696e86d23ebba91cbf65f1383cf63e7d'
    @auth_token = 'a49ee186176ead11c760fd77aeaeb26c'
    @client = Twilio::REST::Client.new(@account_sid, @auth_token)
    @account = @client.account
    body = "Not a valid code." # Portuguese PLS
    @account.sms.messages.create(:from => '+15109854798', :to => phone_number , :body  => body)
  end

  def send_yes(phone_number)
  	@account_sid = 'AC696e86d23ebba91cbf65f1383cf63e7d'
    @auth_token = 'a49ee186176ead11c760fd77aeaeb26c'
    @client = Twilio::REST::Client.new(@account_sid, @auth_token)
    @account = @client.account
    body = "Valid code!"
    @account.sms.messages.create(:from => '+15109854798', :to => phone_number , :body  => body)
    self.destoy
  end
end