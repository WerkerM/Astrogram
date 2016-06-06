class RegistrationsController < ApplicationController
  skip_before_action :redirect_unauthenticated_user
  
  AcceptedSpaceAgencies = %w(asi.it asc-csa.gc.ca cnes.fr cnsa.gov.cn dlr.de esa.int inpe.br jaxa.jp nasa.gov tsniimash.ru stfc.ac.uk)

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      SendRegistrationEmail.send(@user)
    end
  end

  def edit
    @user = User.find_by_email_token(params[:email_token])
    @user.confirmed = true
    redirect_to @user
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :email_token)
  end
end
