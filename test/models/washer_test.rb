require 'test_helper'

class WasherTest < ActiveSupport::TestCase
  def setup
    @Washer = Washer.new(
      username: "ExUsername",
      email:"yeet@yeet.com",
      phone:"(123)-456-789",
      firstname:"John",
      lastname:"Lee",
      max_loads: 2,
      current_loads: 1,
      zip_code: "98122",
      user_id: 1
    )
  end

  test "should be valid" do
    assert @Washer.valid?
  end

  test "Username should be present" do
    @Washer.username = ""
    assert_not @Washer.valid?
  end

  test "Username should not be too long" do
    @Washer.username = "a" * 51
    assert_not @Washer.valid?
  end

  test "firstname should not be too long" do
    @Washer.firstname = "a" * 26
    assert_not @Washer.valid?
  end

  test "lastname should not be too long" do
    @Washer.lastname = "a" * 26
    assert_not @Washer.valid?
  end

  test "email addresses and ids should be unique" do
    duplicate_Washer = @Washer.dup
    @Washer.save
    assert_not duplicate_Washer.valid?
  end

  test "email should not be too long" do
    @Washer.email = "a" * 244 + "@example.com"
    assert_not @Washer.valid?
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @Washer.email = invalid_address
      assert_not @Washer.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email validation should accept valid addresses" do
     valid_addresses = %w[user@example.com USER@foo.COM]
     valid_addresses.each do |valid_address|
       @Washer.email = valid_address
       assert @Washer.valid?
     end
   end

  test "phone number should be valid" do
    @Washer.phone = ""
    assert_not @Washer.valid?
  end

  # test associations
  should belong_to(:user)
end
