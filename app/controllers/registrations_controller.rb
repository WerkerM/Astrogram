class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
     @user = User.new(user_params)
     if @user.save
      @user.set_confirmation_token
      @user.save(validate: false)
      UserMailer.confirmation_email(@user).deliver_now
      flash[:success] = "Please confirm your email address to continue"
    else
      flash[:error] = "Invalid, please try again"
      render :new
    end
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
