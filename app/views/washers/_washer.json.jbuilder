json.extract! washer, :id, :username, :password, :firstname, :lastname, :email, :phone, :address_1, :address_2, :city, :state, :zip, :machine_description, :washing_status, :confirmation_status, :max_loads, :current_loads, :total_loads_completed, :start_date, :created_at, :updated_at
json.url washer_url(washer, format: :json)
