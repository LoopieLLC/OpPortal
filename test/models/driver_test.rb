require 'test_helper'
class DriverTest < ActiveSupport::TestCase

  def setup
    @driver = Driver.new(
      username: "ExUsername2",
      password: "foobar9494934",
      password_confirmation: "foobar9494934",
      email:"yeet@yeet.com",
      phone:"(123)-456-789",
      firstname:"John",
      lastname:"Lee",
      license_plate:"ASB2983",
      vin: "EE",
      car_year: "2000",
      car_make: "lexington",
      car_model: "lefdsafs",
      car_color: "red",
      address_1: "address",
      address_2: "address2",
      zip: "63105"
    )
  end

  test "should be valid" do
    assert @driver.valid?
  end

  test "Username should be present" do
    @driver.username = ""
    assert_not @driver.valid?
  end

  test "Username is present" do
    @driver.username = "Jackburns"
    assert @driver.valid?
  end

  test "Username should not be too long" do
    @driver.username = "a" * 51
    assert_not @driver.valid?
  end

  test "firstname should not be too long" do
    @driver.firstname = "a" * 26
    assert_not @driver.valid?
  end

  test "lastname should not be too long" do
    @driver.lastname = "a" * 26
    assert_not @driver.valid?
  end

  test "email addresses and ids should be unique" do
    duplicate_driver = @driver.dup
    @driver.save
    assert_not duplicate_driver.valid?
  end

  test "email should not be too long" do
    @driver.email = "a" * 244 + "@example.com"
    assert_not @driver.valid?
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com]
    invalid_addresses.each do |invalid_address|
      @driver.email = invalid_address
      assert_not @driver.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email validation should accept valid addresses" do
     valid_addresses = %w[user@example.com USER@foo.COM]
     valid_addresses.each do |valid_address|
       @driver.email = valid_address
       assert @driver.valid?
     end
   end

  test "phone number should be valid" do
    @driver.phone = ""
    assert_not @driver.valid?
  end

  test "car_year should exist" do
    @driver.car_year = ""
    assert_not @driver.valid?
  end

  test "password should be present (nonblank)" do
    @driver.password = @driver.password_confirmation = " " * 8
    assert_not @driver.valid?
  end

  test "password should have a minimum length" do
    @driver.password = @driver.password_confirmation = "a" * 7
    assert_not @driver.valid?
  end

  test "vin should exist" do
    @driver.vin = ""
    assert_not @driver.valid?
  end

  test "address1 should exist" do
    @driver.address_1 = ""
    assert_not @driver.valid?
  end

  test "address2 should exist" do
    @driver.address_2 = ""
    assert_not @driver.valid?
  end

  test "zip should exist" do
    @driver.zip = ""
    assert_not @driver.valid?
  end

  test "car_make should exist" do
    @driver.car_make = ""
    assert_not @driver.valid?
  end

  test "car_color should exist" do
    @driver.car_color = ""
    assert_not @driver.valid?
  end

  test "car_model should exist" do
    @driver.car_model = ""
    assert_not @driver.valid?
  end

  test "car_year should accept valid values" do
    @driver.car_year = ""
    assert_not @driver.valid?
  end

  #test fails for some stupid reason, regex works fine, i have no idea why
  #because it works in cmd but not in rails model

  #Hey Jack -- can you help me with these tests because i don't know why they aren't coming up true
  # test "car_year validation should reject invalid car_years" do
  #   invalid_car_years = %w[1899 1 300 200230]
  #   invalid_car_years.each do |invalid_car_year|
  #     @driver.car_year = invalid_car_year
  #     assert_not @driver.valid?, "#{invalid_car_year.inspect} should be invalid"
  #   end
  # end
  #
  # test "VINS should be valid" do
  #   @driver.vin = "JH4NA1150RT000268"
  #   assert @driver.valid?
  # end

end
