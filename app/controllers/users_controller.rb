class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  skip_before_action :redirect_unauthenticated_user, only: :confirm_email

  AcceptedSpaceAgencies = %w(asi.it asc-csa.gc.ca cnes.fr cnsa.gov.cn dlr.de esa.int inpe.br jaxa.jp nasa.gov tsniimash.ru stfc.ac.uk)

  def show
    if @user
      render :show
    else
      redirect_to root_path, alert: "User does not exist."
    end
  end

  def edit
  end

  def update
  end

  def confirm_email
    user = User.find_by_email_token(params[:email_token])
    if user
      user.verify
      user.save
      email_domain = user.email.split('@')[1]
      if AcceptedSpaceAgencies.include?(email_domain)
        user.astronaut = true
        user.save
      end
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:error] = "Sorry. User does not exist"
      redirect_to root_url
    end
  end

  def astronauts
    @astronauts = User.where(astronaut: true)
  end

  private
  def set_user
    @user = User.find_by(id: params[:id])
  end
end
