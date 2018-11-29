class UserSessionsController < ApplicationController
  skip_before_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to(@user)
    else
      flash.now[:danger] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    if logout
      flash[:success] = 'Log out successful'
      redirect_to(welcome_path)
    end
  end

  def index
    redirect_to :login
  end
end
