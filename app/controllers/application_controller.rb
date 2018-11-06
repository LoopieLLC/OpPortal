class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include UserSessionsHelper

  before_filter :require_login
  
  private
    def not_authenticated
      redirect_to(login_path, :alert => "Please login first")
    end
end
