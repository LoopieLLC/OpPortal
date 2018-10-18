require 'test_helper'

class WashersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @washer = washers(:one)
  end

  test "should get index" do
    get washers_url
    assert_response :success
  end

  test "should get new" do
    get new_washer_url
    assert_response :success
  end

  test "should create washer" do
    assert_difference('Washer.count') do
      post washers_url, params: { washer: { address_1: @washer.address_1, address_2: @washer.address_2, city: @washer.city, confirmation_status: @washer.confirmation_status, current_loads: @washer.current_loads, email: "yeet@yeet.com", firstname: @washer.firstname, lastname: @washer.lastname, machine_description: @washer.machine_description, max_loads: @washer.max_loads, password: "!23457895", password_confirmation: "!23457895", phone: "(314)-225-6006", start_date: @washer.start_date, state: @washer.state, total_loads_completed: @washer.total_loads_completed, username: "iamawasher", washing_status: @washer.washing_status, zip_code: @washer.zip_code, user_id: 1 } }
    end

    assert_redirected_to washer_url(Washer.last)
  end

  test "should show washer" do
    get washer_url(@washer)
    assert_response :success
  end

  test "should get edit" do
    get edit_washer_url(@washer)
    assert_response :success
  end

  test "should update washer" do
    patch washer_url(@washer), params: { washer: { address_1: @washer.address_1, address_2: @washer.address_2, city: @washer.city, confirmation_status: @washer.confirmation_status, current_loads: @washer.current_loads, email: "washer@washers.net", firstname: @washer.firstname, lastname: @washer.lastname, machine_description: @washer.machine_description, max_loads: @washer.max_loads, password: "!23457895", password_confirmation: "!23457895", phone: "(314)-224-6006", start_date: @washer.start_date, state: @washer.state, total_loads_completed: @washer.total_loads_completed, username: "gunna35", washing_status: @washer.washing_status, zip_code: @washer.zip_code, user_id: 1 } }
    assert_redirected_to washer_url(@washer)
  end

  test "should destroy washer" do
    assert_difference('Washer.count', -1) do
      delete washer_url(@washer)
    end

    assert_redirected_to washers_url
  end
end
