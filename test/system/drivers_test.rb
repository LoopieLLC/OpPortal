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

    fill_in "Additional Information", with: @driver.additional_information
    fill_in "Address 1", with: @driver.address_1
    fill_in "Address 2", with: @driver.address_2
    fill_in "Car Color", with: @driver.car_color
    fill_in "Car Make", with: @driver.car_make
    fill_in "Car Model", with: @driver.car_model
    fill_in "Car Year", with: @driver.car_year
    fill_in "City", with: @driver.city
    fill_in "Confirmation Status", with: @driver.confirmation_status
    fill_in "Current Loads", with: @driver.current_loads
    fill_in "Driving Status", with: @driver.driving_status
    fill_in "Email", with: @driver.email
    fill_in "Firstname", with: @driver.firstname
    fill_in "Insurance Info", with: @driver.insurance_info
    fill_in "Lastname", with: @driver.lastname
    fill_in "License Image", with: @driver.license_image
    fill_in "License Plate", with: @driver.license_plate
    fill_in "Password", with: @driver.password
    fill_in "Phone", with: @driver.phone
    fill_in "Start Date", with: @driver.start_date
    fill_in "State", with: @driver.state
    fill_in "Username", with: @driver.username
    fill_in "Vin", with: @driver.vin
    fill_in "Zip", with: @driver.zip_code
    click_on "Create Driver"

    assert_text "Driver was successfully created"
    click_on "Back"
  end

  test "updating a Driver" do
    visit drivers_url
    click_on "Edit", match: :first

    fill_in "Additional Information", with: @driver.additional_information
    fill_in "Address 1", with: @driver.address_1
    fill_in "Address 2", with: @driver.address_2
    fill_in "Car Color", with: @driver.car_color
    fill_in "Car Make", with: @driver.car_make
    fill_in "Car Model", with: @driver.car_model
    fill_in "Car Year", with: @driver.car_year
    fill_in "City", with: @driver.city
    fill_in "Confirmation Status", with: @driver.confirmation_status
    fill_in "Current Loads", with: @driver.current_loads
    fill_in "Driving Status", with: @driver.driving_status
    fill_in "Email", with: @driver.email
    fill_in "Firstname", with: @driver.firstname
    fill_in "Insurance Info", with: @driver.insurance_info
    fill_in "Lastname", with: @driver.lastname
    fill_in "License Image", with: @driver.license_image
    fill_in "License Plate", with: @driver.license_plate
    fill_in "Password", with: @driver.password
    fill_in "Phone", with: @driver.phone
    fill_in "Start Date", with: @driver.start_date
    fill_in "State", with: @driver.state
    fill_in "Username", with: @driver.username
    fill_in "Vin", with: @driver.vin
    fill_in "Zip", with: @driver.zip_code
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
