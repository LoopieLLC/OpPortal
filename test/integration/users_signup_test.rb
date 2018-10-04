require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get new_user_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { firstname: "",
                                         lastname: "",
                                         email: "user@invalid",
                                         role: 1,
                                         password: "foo",
                                         password_confirmation: "bar",
                                         zip_code: "98122" } }
    end
    assert_template 'users/new'
    #assert_select 'div#error_explanation'
    #assert_select 'div.field_with_errors'
  end

  test "valid signup information" do
    get new_user_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { firstname:  "Example",
                                         lastname: "example2",
                                         email: "user@example.com",
                                         zip_code: "98416",
                                         password:              "password22",
                                         password_confirmation: "password22" } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.nil?
  end
end
