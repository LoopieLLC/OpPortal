require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get washer_login" do
    get login_washer_login_url
    assert_response :success
  end

  test "should get driver_login" do
    get login_driver_login_url
    assert_response :success
  end

end
