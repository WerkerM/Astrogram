class RegistrationsController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  AcceptedSpaceAgencies = %w(asi.it asc-csa.gc.ca cnes.fr cnsa.gov.cn dlr.de esa.int inpe.br jaxa.jp nasa.gov tsniimash.ru stfc.ac.uk)

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        SendRegistrationEmail.send(@user)
        format.html { redirect_to(user_path(@user), notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
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
