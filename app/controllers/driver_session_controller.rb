class DriverSessionController < ApplicationController
  def new
    @driver = Driver.new
  end

  def create
    if @driver = login(params[:driver_session][:email], params[:driver_session][:password])
    redirect_back_or_to(:drivers, notice: 'Login Successful')
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url
  end
end
