json.extract! washer, :id, :username, :password, :firstname, :lastname, :phone, :email, :address, :washing_status, :max_loads, :current_loads, :total_loads_completed, :machine_description, :start_date, :confirmation_status, :created_at, :updated_at
json.url washer_url(washer, format: :json)
