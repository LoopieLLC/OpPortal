class ApplicationController < ActionController::Base
  include UserSessionsHelper
  protect_from_forgery with: :exception
  before_action :require_login

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  private
    def not_authenticated
      flash[:danger] = "Please login first."
      redirect_to(login_path)
>>>>>>> development
    end
end
