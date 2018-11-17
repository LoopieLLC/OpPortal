class ApplicationController < ActionController::Base
  before_action :require_login
  protect_from_forgery with: :exception
  include UserSessionsHelper

  """
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
"""
  def authorize
    redirect_to '/login' unless current_user
  end

  private
    def not_authenticated
      flash[:danger] = "Please login first."
      redirect_to(login_path)
    end
end
