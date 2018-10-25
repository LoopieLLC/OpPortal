module DriverSessionHelper
  def log_in(driver)
    session[:driver] = driver.id
  end

  def current_user
    if session[:driver_id]
      @current_driver ||= Driver.find_by(id: session[:driver_id])
    end
  end

  def log_out
    session.delete(:driver_id)
    @current_driver = nil
  end

  def logged_in?
    !current_user.nil?
  end
end
