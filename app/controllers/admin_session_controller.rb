class AdminSessionController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(username: params[:admin_session][:username])
    if admin && admin.authenticate(params[:admin_session][:password])
      log_in admin
      redirect_to admin
    else
       flash.now[:danger] = 'Invalid username/password combination'
      render 'new'
    end

  end

  def destroy
  end

end
