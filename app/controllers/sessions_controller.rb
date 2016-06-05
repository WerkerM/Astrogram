class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: login_params[:username])
    if @user && @user.authenticate(login_params[:password])
      session[:user_id] = @user.id
      redirect_to posts_path, notice: "You have successfully logged in! Shine on, you crazy diamond."
    else
      @user = User.new
      flash.now[:alert] = "There was a problem with your login; please try again."
      render :new
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
