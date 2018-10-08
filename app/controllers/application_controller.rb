class ApplicationController < ActionController::Base
  include AdminSessionHelper
  include DriverSessionHelper
  include WasherSessionHelper
end
