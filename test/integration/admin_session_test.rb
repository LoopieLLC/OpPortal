require 'test_helper'

class AdminSessionTest < ActionDispatch::IntegrationTest
  def setup
    @admin = admins(:John)
  end



  test "login with valid information" do
    get admin_login_path
    post admin_login_path, params: { session: { username:    @admin.username,
                                          password: 'password' } }
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_select "a[href=?]", admin_login_path, count: 0
    assert_select "a[href=?]", admin_logout_path
    assert_select "a[href=?]", admin_path(@admin)
  end
  # test "the truth" do
  #   assert true
  # end
end
