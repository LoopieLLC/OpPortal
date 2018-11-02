module AdminSessionHelper
  def log_in(admin)
    session[:admin_id] = admin.id
  end

  def current_user
    if session[:admin_id]
      @current_admin ||= Admin.find_by(id: session[:admin_id])
    end
  end

  def log_out
    session.delete(:admin_id)
    @current_admin = nil
  end

  def logged_in?
    !current_user.nil?
  end

  def confirm_user
  end

end
