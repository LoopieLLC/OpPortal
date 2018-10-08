require 'test_helper'

class DriverSessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get driver_login_path
    assert_response :success
  end

end
