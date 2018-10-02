json.extract! user, :id, :email, :password, :firstname, :lastname, :confirmation_status, :role, :start_date, :zip_code :created_at, :updated_at
json.url user_url(user, format: :json)
