require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(
      email: "jackburns1232542@gmail.com",
      password: "foobar9494934",
      password_confirmation: "foobar9494934",
      firstname: "Jack",
      lastname: "Burns",
      zip_code: "98406",
      washer_id: 1
    )
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "firstname should be present" do
    @user.firstname = ""
    assert_not @user.valid?
  end

  test "lastname should be present" do
    @user.lastname = ""
    assert_not @user.valid?
  end

  test "firstname should not be too long" do
    @user.firstname = "a" * 26
    assert_not @user.valid?
  end

  test "lastname should not be too long" do
    @user.lastname = "a" * 26
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 8
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 7
    assert_not @user.valid?
  end

  test "zip should be present" do
    @user.zip_code = ""
    assert_not @user.valid?
  end

  test "zip should be at least 5 character long" do
    @user.zip_code = "a" * 4
    assert_not @user.valid?
  end

  test "zip should have a max length of 15" do
    @user.zip_code = "a" * 17
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
   valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                        first.last@foo.jp alice+bob@baz.cn]
   valid_addresses.each do |valid_address|
     @user.email = valid_address
     assert @user.valid?, "#{valid_address.inspect} should be valid"
   end
 end

 # test associations
 should belong_to(:driver)
 should belong_to(:washer)
end
