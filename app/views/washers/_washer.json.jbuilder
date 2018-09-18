json.extract! washer, :id, :username, :password, :firstname, :lastname, :phone, :email, :address, :status, :max_loads, :current_loads, :machine_description, :start_date, :total_loads_completed, :created_at, :updated_at
json.url washer_url(washer, format: :json)
