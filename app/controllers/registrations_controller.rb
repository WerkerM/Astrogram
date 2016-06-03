class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    # create the token hash
    redirect_to :root
  end

  def edit
    binding.pry
    @user = User.find_by_email_token(params[:email_token])
    @user.confirmed = true
    redirect_to @user
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :email_token)
  end
end
