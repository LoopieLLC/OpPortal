require 'test_helper'

class SignUpControllerTest < ActionDispatch::IntegrationTest
  test "should get washer_sign_up" do
    get sign_up_washer_sign_up_url
    assert_response :success
  end

  test "should get driver_sign_up" do
    get sign_up_driver_sign_up_url
    assert_response :success
  end

end
