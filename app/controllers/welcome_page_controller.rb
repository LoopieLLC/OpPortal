class WelcomePageController < ApplicationController
  layout "welcome"
  skip_before_action :require_login

  def welcome

  end
end
