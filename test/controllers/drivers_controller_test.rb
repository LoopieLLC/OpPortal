require 'test_helper'

class DriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver = drivers(:one)
  end

  test "should get index" do
    get drivers_url
    assert_response :success
  end

  test "should get new" do
    get new_driver_url
    assert_response :success
  end

  test "should create driver" do
    assert_difference('Driver.count') do
      post drivers_url, params: { driver: { additional_information: @driver.additional_information, address_1: @driver.address_1, address_2: @driver.address_2, car_color: @driver.car_color, car_make: @driver.car_make, car_model: @driver.car_model, car_year: @driver.car_year, city: @driver.city, confirmation_status: @driver.confirmation_status, current_loads: @driver.current_loads, driving_status: @driver.driving_status, email: "yeet@yeeter.com", firstname: @driver.firstname, insurance_info: @driver.insurance_info, lastname: @driver.lastname, license_image: @driver.license_image, license_plate: "ASB2989", password: "testpassword", password_confirmation: "testpassword", phone: "(314)-225-6006", start_date: @driver.start_date, state: @driver.state, username: "johnDenver", vin: @driver.vin, zip_code: @driver.zip_code } }
    end

    assert_redirected_to driver_url(Driver.last)
  end

  test "should show driver" do
    get driver_url(@driver)
    assert_response :success
  end

  test "should get edit" do
    get edit_driver_url(@driver)
    assert_response :success
  end

  test "should update driver" do
    patch driver_url(@driver), params: { driver: { additional_information: @driver.additional_information, address_1: @driver.address_1, address_2: @driver.address_2, car_color: "red", car_make: "sticky", car_model: "clap", car_year: "2018", city: @driver.city, confirmation_status: @driver.confirmation_status, current_loads: @driver.current_loads, driving_status: @driver.driving_status, email: "driver@driver.com", firstname: @driver.firstname, insurance_info: @driver.insurance_info, lastname: @driver.lastname, license_image: @driver.license_image, license_plate: "ASB2984", password: "testpassword", password_confirmation: "testpassword", phone: "(314)-409-7972", start_date: @driver.start_date, state: @driver.state, username: "testusername", vin: @driver.vin, zip_code: @driver.zip_code} }
    assert_redirected_to driver_url(@driver)
  end

  test "should destroy driver" do
    assert_difference('Driver.count', -1) do
      delete driver_url(@driver)
    end

    assert_redirected_to drivers_url
  end
end
