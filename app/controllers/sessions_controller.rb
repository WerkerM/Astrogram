class SessionsController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: login_params[:username])
    if AccountVerifier.with_email_and_password_verification(user, login_params)
      session[:user_id] = user.id
      redirect_to root_path, notice: "You have successfully logged in! Shine on, you crazy diamond."
    elsif AccountVerifier.without_email_verification(user)
      redirect_to login_path, notice: "Please verify your email address."
    else
      redirect_to login_path, alert: "There was a problem with your login; please try again."
    end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "You have been successfully logged out."
  end

  private

  def login_params
    params.require(:user).permit(:username, :password)
  end
end
