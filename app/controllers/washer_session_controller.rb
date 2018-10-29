class WasherSessionController < ApplicationController
  def new
    @washer = Washer.new
  end

  def create
    if @washer = login(params[:washer_session][:email], params[:washer_session][:password])
    redirect_back_or_to(:washers, notice: 'Login Successful')
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
