class ApplicationController < ActionController::Base
  include UserSessionsHelper
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :require_login

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to help_path, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  private
    def not_authenticated
      flash[:danger] = "Please login first."
      redirect_to(login_path)
    end
end
