require 'test_helper'

class WasherLoginTestTest < ActionDispatch::IntegrationTest
  def setup
    @washer = washers(:one)
  end

  test "login with invalid information" do
    get washer_login_path
    assert_template 'washer_session/new'
    post washer_login_path, params: { washer_session: { email: "", password: "" } }
    assert_template 'washer_session/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  test "login with valid information" do
    get washer_login_path
    post washer_login_path, params: { washer_session: { email: @washer.email,
                                                 password: 'testpassword' } }
    puts @washer.email
    puts @washer.crypted_password
    assert_redirected_to @washer
    follow_redirect!
    assert_template 'washers/show'
    assert_select "a[href=?]", washer_login_path, count: 0
    assert_select "a[href=?]", washer_logout_path
    assert_select "a[href=?]", washer_path(@washer)
  end

end
