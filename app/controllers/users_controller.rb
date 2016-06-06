class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
  end

  def confirm_email
    user = User.find_by_email_token(params[:email_token])
    if user
      user.validate_email
      user.save(validate: false)
      redirect_to user
    else
      flash[:error] = "Sorry. User does not exist"
      redirect_to root_url
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
