class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include AdminSessionHelper
  include DriverSessionHelper
  include WasherSessionHelper
end
