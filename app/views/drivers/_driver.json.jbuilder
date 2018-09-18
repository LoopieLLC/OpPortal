json.extract! driver, :id, :username, :password, :firstname, :lastname, :email, :address, :phone, :insurance, :license_plate, :car_year, :car_make, :car_model, :car_color, :driver_license_img, :current_loads, :start_date, :status, :description, :created_at, :updated_at
json.url driver_url(driver, format: :json)
