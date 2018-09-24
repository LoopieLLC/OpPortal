require 'test_helper'

class WelcomePageControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get welcome_path
    assert_response :success
  end

end
