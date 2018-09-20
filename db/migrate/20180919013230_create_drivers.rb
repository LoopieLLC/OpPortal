class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :address
      t.text :insurance
      t.string :license_plate
      t.string :car_year
      t.string :car_make
      t.string :car_model
      t.string :car_color
      t.string :driver_license_img
      t.text :description
      t.integer :current_loads
      t.date :start_date
      t.integer :driving_status
      t.integer :confirmation_status

      t.timestamps
    end
  end
end
