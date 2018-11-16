class WelcomePageController < ApplicationController
  layout "welcome"
  skip_before_action :require_login

  def welcome
    if current_user
      redirect_to(:users)
    end
  end
end
