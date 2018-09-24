require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get washer_login" do
    get washer_login_path
    assert_response :success
  end

  test "should get driver_login" do
    get driver_login_path
    assert_response :success
  end

end
