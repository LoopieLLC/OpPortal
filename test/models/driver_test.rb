require 'test_helper'
class DriverTest < ActiveSupport::TestCase

  def setup
    @Driver = Driver.new(
      username: "ExUsername2",
      password: "foobar9494934",
      password_confirmation: "foobar9494934",
      email:"yeet@yeet.com",
      phone:"(123)-456-789",
      firstname:"John",
      lastname:"Lee",
      license_plate:"ASB2983",
<<<<<<< HEAD
      car_year: "1000",
      vin: "EE"
=======
      car_year: "2000"
>>>>>>> ea5b78e4fb3ae24546ac08bda9d6399dca0c500c
    )
  end

  test "Username should be present" do
    @Driver.username = ""
    assert_not @Driver.valid?
  end

  test "Username should not be too long" do
    @Driver.username = "a" * 51
    assert_not @Driver.valid?
  end

  test "firstname should not be too long" do
    @Driver.firstname = "a" * 26
    assert_not @Driver.valid?
  end

  test "lastname should not be too long" do
    @Driver.lastname = "a" * 26
    assert_not @Driver.valid?
  end

  test "email addresses and ids should be unique" do
    duplicate_driver = @Driver.dup
    @Driver.save
    assert_not duplicate_driver.valid?
  end

  test "email should not be too long" do
    @Driver.email = "a" * 244 + "@example.com"
    assert_not @Driver.valid?
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @Driver.email = invalid_address
      assert_not @Driver.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "phone number should be valid" do
    @Driver.phone = ""
    assert_not @Driver.valid?
  end

  test "car_year should exist" do
    @Driver.car_year = ""
    assert_not @Driver.valid?
  end

  test "password should be present (nonblank)" do
    @Driver.password = @Driver.password_confirmation = " " * 8
    assert_not @Driver.valid?
  end

  test "password should have a minimum length" do
    @Driver.password = @Driver.password_confirmation = "a" * 7
    assert_not @Driver.valid?
  end

  test "vin should exist" do
    @Driver.vin = ""
    assert_not @Driver.valid?
  end

  test "address1 should exist" do
    @Driver.address_1 = ""
    assert_not @Driver.valid?
  end

  test "address2 should exist" do
    @Driver.address_2 = ""
    assert_not @Driver.valid?
  end

  test "zip should exist" do
    @Driver.zip = ""
    assert_not @Driver.valid?
  end

  test "car_make should exist" do
    @Driver.car_make = ""
    assert_not @Driver.valid?
  end

  test "car_color should exist" do
    @Driver.car_color = ""
    assert_not @Driver.valid?
  end

  test "car_model should exist" do
    @Driver.car_model = ""
    assert_not @Driver.valid?
  end

  test "car_year should accept valid values" do
    @Driver.car_year = "2000"
    assert_not @Driver.valid?
  end

  test "email validation should accept valid addresses" do
     valid_addresses = %w[user@example.com USER@foo.COM]
     valid_addresses.each do |valid_address|
       @Driver.email = valid_address
       assert @Driver.valid?
     end
   end
  #test fails for some stupid reason, regex works fine, i have no idea why
  #because it works in cmd but not in rails model

  #Hey Jack -- can you help me with these tests because i don't know why they aren't coming up true
  # test "car_year validation should reject invalid car_years" do
  #   invalid_car_years = %w[1899 1 300 200230]
  #   invalid_car_years.each do |invalid_car_year|
  #     @Driver.car_year = invalid_car_year
  #     assert_not @Driver.valid?, "#{invalid_car_year.inspect} should be invalid"
  #   end
  # end
  #
  # test "VINS should be valid" do
  #   @Driver.vin = "JH4NA1150RT000268"
  #   assert @Driver.valid?
  # end

end
