require "application_system_test_case"

class WashersTest < ApplicationSystemTestCase
  setup do
    @washer = washers(:one)
  end

  test "visiting the index" do
    visit washers_url
    assert_selector "h1", text: "Washers"
  end

  test "creating a Washer" do
    visit washers_url
    click_on "New Washer"

    fill_in "Address", with: @washer.address
    fill_in "Confirmation Status", with: @washer.confirmation_status
    fill_in "Current Loads", with: @washer.current_loads
    fill_in "Email", with: @washer.email
    fill_in "Firstname", with: @washer.firstname
    fill_in "Lastname", with: @washer.lastname
    fill_in "Machine Description", with: @washer.machine_description
    fill_in "Max Loads", with: @washer.max_loads
    fill_in "Password", with: @washer.password
    fill_in "Phone", with: @washer.phone
    fill_in "Start Date", with: @washer.start_date
    fill_in "Total Loads Completed", with: @washer.total_loads_completed
    fill_in "Username", with: @washer.username
    fill_in "Washing Status", with: @washer.washing_status
    click_on "Create Washer"

    assert_text "Washer was successfully created"
    click_on "Back"
  end

  test "updating a Washer" do
    visit washers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @washer.address
    fill_in "Confirmation Status", with: @washer.confirmation_status
    fill_in "Current Loads", with: @washer.current_loads
    fill_in "Email", with: @washer.email
    fill_in "Firstname", with: @washer.firstname
    fill_in "Lastname", with: @washer.lastname
    fill_in "Machine Description", with: @washer.machine_description
    fill_in "Max Loads", with: @washer.max_loads
    fill_in "Password", with: @washer.password
    fill_in "Phone", with: @washer.phone
    fill_in "Start Date", with: @washer.start_date
    fill_in "Total Loads Completed", with: @washer.total_loads_completed
    fill_in "Username", with: @washer.username
    fill_in "Washing Status", with: @washer.washing_status
    click_on "Update Washer"

    assert_text "Washer was successfully updated"
    click_on "Back"
  end

  test "destroying a Washer" do
    visit washers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Washer was successfully destroyed"
  end
end
