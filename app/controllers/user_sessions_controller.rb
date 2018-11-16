class UserSessionsController < ApplicationController
  skip_before_action :require_login
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      if @user.confirmation_status < 1
        logout
        redirect_to(:welcome)
      else
        flash[:success] = 'Login successful'
        redirect_back_or_to(:users)
      end
    else
      flash[:danger] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    flash[:success] = 'Logged Out!'
    redirect_to(:login)
  end
end
