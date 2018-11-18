class ApplicationController < ActionController::Base
  include UserSessionsHelper
  protect_from_forgery with: :exception
  before_action :require_login

  private
    def not_authenticated
      flash[:danger] = "Please login first."
      redirect_to(login_path)
    end
end
