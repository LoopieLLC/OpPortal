require 'test_helper'

class WashersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get new_washer_path
    assert_no_difference 'Washer.count' do
      post washers_path, params: { washer: {
                                              username: "",
                                              password: "foobar9494934",
                                              password_confirmation: "foobar9494934",
                                              email:"yeet@yeet.com",
                                              phone:"(123)-456-789",
                                              firstname:"John",
                                              lastname:"Lee",
                                              max_loads: 2,
                                              current_loads: 1 } }
    end
    assert_template 'washers/new'
  end

  test "valid signup information" do
    get new_washer_path
    assert_difference 'Washer.count', 1 do
      post washers_path, params: { washer: {
                                              username: "fdsafdsafds",
                                              password: "foobar9494934",
                                              password_confirmation: "foobar9494934",
                                              email:"yeet@yeet.com",
                                              phone:"(123)-456-789",
                                              firstname:"John",
                                              lastname:"Lee",
                                              max_loads: 2,
                                              current_loads: 1 } }
    end
    follow_redirect!
    assert_template 'washers/show'
  end
end
