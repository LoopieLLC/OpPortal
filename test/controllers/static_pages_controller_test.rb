require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Loopie Laundry"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get driver_guidelines" do
    get driver_guidelines_path
    assert_response :success
    assert_select "title", "Driver Guidelines | #{@base_title}"
  end

  test "should get washer_guidelines" do
    get washer_guidelines_path
    assert_response :success
    assert_select "title", "Washer Guidelines | #{@base_title}"
  end

end
