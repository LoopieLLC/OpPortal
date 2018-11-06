class WelcomePageController < ApplicationController
  layout "welcome"
  skip_before_filter :require_login

  def welcome

  end
end
