module DriverSessionHelper
  def log_in(driver)
    session[:driver] = driver.id
  end

  def current_user
    if session[:driver_id]
      @current_driver ||= Driver.find_by(id: session[:driver_id])
    end
  end
end
