json.extract! driver, :id, :username, :password, :firstname, :lastname, :email, :phone, :address_1, :address_2, :city, :state, :zip, :insurance_info, :vin, :license_plate, :car_year, :car_make, :car_model, :car_color, :license_image, :additional_information, :current_loads, :driving_status, :confirmation_status, :start_date, :created_at, :updated_at
json.url driver_url(driver, format: :json)
