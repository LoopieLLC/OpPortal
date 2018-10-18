require 'test_helper'

class AdminSessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
   get admin_login_path
   assert_response :success
 end

end
