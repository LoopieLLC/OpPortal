class WasherSessionController < ApplicationController
  def new
    @washer = Washer.new
  end

  def create
    washer = Washer.find_by(email: params[:washer_session][:email].downcase)
    if washer && washer.authenticate(params[:washer_session][:password])
      log_in washer
      redirect_to washer
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
