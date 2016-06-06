class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user, :redirect_unauthenticated_user
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def redirect_unauthenticated_user
    if @current_user.nil?
      session[:user_id] = nil
      redirect_to login_path
    end
  end

  def logged_in?
    session[:user_id] ? true : false
  end
end
