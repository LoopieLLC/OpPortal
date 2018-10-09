require 'test_helper'

class WasherSessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get washer_session_new_url
    assert_response :success
  end

end
