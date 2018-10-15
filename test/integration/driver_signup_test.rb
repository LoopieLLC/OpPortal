require 'test_helper'

class DriverSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get new_driver_path
    assert_no_difference 'Driver.count' do
      post drivers_path, params: { driver: {
                                              username: "",
                                              password: "foobar9494934",
                                              password_confirmation: "foobar9494934",
                                              email:"yeet@yeeter.com",
                                              phone:"123-456-789",
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
                                              zip_code: "63105"} }
    end
    assert_template 'drivers/new'
  end

  test "valid signup information" do
   get new_driver_path
   assert_difference 'Driver.count', 1 do
     post drivers_path, params: { driver: {
                                            username: "iamadriver",
                                            password: "foobar9494934",
                                            password_confirmation: "foobar9494934",
                                            email:"yeet@yeeter.com",
                                            phone:"123-456-789",
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
                                            zip_code: "63105" } }
   end

   follow_redirect!
   assert_template 'drivers/show'
 end
end
