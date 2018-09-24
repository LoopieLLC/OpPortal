json.extract! driver, :id, :username, :password, :firstname, :lastname, :email, :phone, :address, :insurance, :license_plate, :car_year, :car_make, :car_model, :car_color, :driver_license_img, :description, :current_loads, :start_date, :driving_status, :confirmation_status, :created_at, :updated_at
json.url driver_url(driver, format: :json)
