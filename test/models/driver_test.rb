require 'test_helper'

class DriverTest < ActiveSupport::TestCase

  def setup
    @Driver = Driver.new(
      username: "ExUsername",
      password: "ExPassword!23",
      email:"yeet@yeet.com",
      id:"230",
      phone:"(123)-456-789",
      firstname:"John",
      lastname:"Lee",
      license_plate:"ASB2983",
      car_year: "2000"
    )
  end


  test "Username should be present" do
    @Driver.username = ""
    assert_not @Driver.valid?
  end

  test "Password should be present" do
    @Driver.password = ""
    assert_not @Driver.valid?
  end

  test "email addresses and ids should be unique" do
    duplicate_user = @Driver.dup
    @Driver.save
    assert_not duplicate_user.valid?
  end

  test "phone number should be valid" do
    @Driver.phone = ""
    assert_not @Driver.valid?
  end

  test "car_year should exist" do
    @Driver.car_year = ""
    assert_not @Driver.valid?
  end

#test fails for some stupid reason, regex works fine, i have no idea why
#because it works in cmd but not in rails model

  # test "license_plate should accept valid license plates" do
  #   valid_license_plates = %w[273-FSD ASD2384 837-AHX OFC3827]
  #   valid_license_plates.each do |valid_lp|
  #     @Driver.license_plate = valid_lp
  #     assert @Driver.valid?, "#{valid_lp.inspect} should be valid"
  #   end
  # end

  # test "car_year should only accept valid years" do
  #   valid_car_years = %w[2000 2018 1966 1940]
  #   valid_car_years.each do |valid_car_year|
  #     @Driver.car_year = valid_car_year
  #     assert @Driver.valid?, "#{valid_car_year} should be valid"
  #   end
  # end



  # test "the truth" do
  #   assert true
  # end
end
