class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  skip_before_action :redirect_unauthenticated_user, only: :confirm_email

  def show
  end

  def confirm_email
    user = User.find_by_email_token(params[:email_token])
    if user
      VerifyEmail.verified(user)
      SetSession.session_for(user)
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
