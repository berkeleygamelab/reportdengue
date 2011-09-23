class AddPasswordResetToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :password_reset_token, :string
    add_column :users, :password_reset_sent_at, :datetime
  end
end