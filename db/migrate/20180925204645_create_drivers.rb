class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.text :insurance_info
      t.string :vin
      t.string :license_plate
      t.string :car_year
      t.string :car_make
      t.string :car_model
      t.string :car_color
      t.string :license_image
      t.text :additional_information
      t.integer :current_loads
      t.integer :driving_status
      t.integer :confirmation_status
      t.date :start_date

      t.timestamps
    end
  end
end
