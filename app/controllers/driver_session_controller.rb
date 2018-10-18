class DriverSessionController < ApplicationController
  def new
  end

  def create
    driver = Driver.find_by(email: params[:driver_session][:email].downcase)
    if driver && driver.authenticate(params[:driver_session][:password])
      log_in driver
      redirect_to driver
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
