require "application_system_test_case"

class DriversTest < ApplicationSystemTestCase
  setup do
    @driver = drivers(:one)
  end

  test "visiting the index" do
    visit drivers_url
    assert_selector "h1", text: "Drivers"
  end

  test "creating a Driver" do
    visit drivers_url
    click_on "New Driver"

    fill_in "Address", with: @driver.address
    fill_in "Car Color", with: @driver.car_color
    fill_in "Car Make", with: @driver.car_make
    fill_in "Car Model", with: @driver.car_model
    fill_in "Car Year", with: @driver.car_year
    fill_in "Confirmation Status", with: @driver.confirmation_status
    fill_in "Current Loads", with: @driver.current_loads
    fill_in "Description", with: @driver.description
    fill_in "Driver License Img", with: @driver.driver_license_img
    fill_in "Driving Status", with: @driver.driving_status
    fill_in "Email", with: @driver.email
    fill_in "Firstname", with: @driver.firstname
    fill_in "Insurance", with: @driver.insurance
    fill_in "Lastname", with: @driver.lastname
    fill_in "License Plate", with: @driver.license_plate
    fill_in "Password", with: @driver.password
    fill_in "Phone", with: @driver.phone
    fill_in "Start Date", with: @driver.start_date
    fill_in "Username", with: @driver.username
    click_on "Create Driver"

    assert_text "Driver was successfully created"
    click_on "Back"
  end

  test "updating a Driver" do
    visit drivers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @driver.address
    fill_in "Car Color", with: @driver.car_color
    fill_in "Car Make", with: @driver.car_make
    fill_in "Car Model", with: @driver.car_model
    fill_in "Car Year", with: @driver.car_year
    fill_in "Confirmation Status", with: @driver.confirmation_status
    fill_in "Current Loads", with: @driver.current_loads
    fill_in "Description", with: @driver.description
    fill_in "Driver License Img", with: @driver.driver_license_img
    fill_in "Driving Status", with: @driver.driving_status
    fill_in "Email", with: @driver.email
    fill_in "Firstname", with: @driver.firstname
    fill_in "Insurance", with: @driver.insurance
    fill_in "Lastname", with: @driver.lastname
    fill_in "License Plate", with: @driver.license_plate
    fill_in "Password", with: @driver.password
    fill_in "Phone", with: @driver.phone
    fill_in "Start Date", with: @driver.start_date
    fill_in "Username", with: @driver.username
    click_on "Update Driver"

    assert_text "Driver was successfully updated"
    click_on "Back"
  end

  test "destroying a Driver" do
    visit drivers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driver was successfully destroyed"
  end
end
