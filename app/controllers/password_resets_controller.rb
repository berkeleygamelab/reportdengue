class PasswordResetsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset if user
    redirect_to root_url, :notice => "Email sent with password reset instructions."
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    if @user.authenticate(params[:user][:current_password])
      if @user.update_attributes(params[:user]);
        redirect_to edit_user_path(@user)
      else
        render :edit
      end
    end
    
    #@user = User.find_by_password_reset_token!(params[:id])
    #if @user.password_reset_sent_at < 2.hours.ago
    #  redirect_to new_password_reset_path, :alert => "Password reset has expired."
    #elsif @user.update_attributes(params[:user])
    #  redirect_to root_url, :notice => "Password has been reset!"
    #else
    #  render :edit
    #end
  
  end
end
