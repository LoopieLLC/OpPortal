class WelcomePageController < ApplicationController
  layout "welcome"
  def welcome
    if current_user
      redirect_to(:users)
    end
  end
end
