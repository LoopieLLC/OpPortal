class AddAllToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :address_1, :string
    add_column :users, :address_2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :insurance_info, :text
    add_column :users, :vin, :string
    add_column :users, :license_plate, :string
    add_column :users, :car_year, :string
    add_column :users, :car_make, :string
    add_column :users, :car_model, :string
    add_column :users, :car_color, :string
    add_column :users, :additional_information, :text
    add_column :users, :current_loads, :integer
    add_column :users, :driving_status, :integer
    add_column :users, :machine_description, :text
    add_column :users, :washing_status, :integer
    add_column :users, :max_loads, :integer
    add_column :users, :total_loads_touched, :integer
  end
end
