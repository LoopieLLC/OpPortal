require 'test_helper'

class SignUpControllerTest < ActionDispatch::IntegrationTest
  test "should get washer_sign_up" do
    get washer_sign_up_path
    assert_response :success
  end

  test "should get driver_sign_up" do
    get driver_sign_up_path
    assert_response :success
  end

end
