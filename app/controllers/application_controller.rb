class ApplicationController < ActionController::Base
  include UserSessionsHelper
  protect_from_forgery with: :exception
  before_action :require_login

  private
    def not_authenticated
      format.html { redirect_to login_path }
      format.json { render :show, status: :created, location: @user }
      redirect_to(login_path, :alert => "Please login first")
    end
end
