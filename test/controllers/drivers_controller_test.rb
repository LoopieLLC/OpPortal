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
      post drivers_url, params: { driver: { address: @driver.address, car_color: @driver.car_color, car_make: @driver.car_make, car_model: @driver.car_model, car_year: @driver.car_year, current_loads: @driver.current_loads, description: @driver.description, driver_license_img: @driver.driver_license_img, email: @driver.email, firstname: @driver.firstname, insurance: @driver.insurance, lastname: @driver.lastname, license_plate: @driver.license_plate, password: @driver.password, phone: @driver.phone, start_date: @driver.start_date, status: @driver.status, username: @driver.username } }
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
    patch driver_url(@driver), params: { driver: { address: @driver.address, car_color: @driver.car_color, car_make: @driver.car_make, car_model: @driver.car_model, car_year: @driver.car_year, current_loads: @driver.current_loads, description: @driver.description, driver_license_img: @driver.driver_license_img, email: @driver.email, firstname: @driver.firstname, insurance: @driver.insurance, lastname: @driver.lastname, license_plate: @driver.license_plate, password: @driver.password, phone: @driver.phone, start_date: @driver.start_date, status: @driver.status, username: @driver.username } }
    assert_redirected_to driver_url(@driver)
  end

  test "should destroy driver" do
    assert_difference('Driver.count', -1) do
      delete driver_url(@driver)
    end

    assert_redirected_to drivers_url
  end
end
