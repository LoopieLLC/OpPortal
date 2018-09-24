require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Loopie Laundry"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get driver_guidelines" do
    get static_pages_driver_guidelines_url
    assert_response :success
    assert_select "title", "Driver Guidelines | #{@base_title}"
  end

  test "should get washer_guidelines" do
    get static_pages_washer_guidelines_url
    assert_response :success
    assert_select "title", "Washer Guidelines | #{@base_title}"
  end

end
