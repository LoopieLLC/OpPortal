class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :address
      t.string :phone
      t.text :insurance
      t.string :license_plate
      t.date :car_year
      t.string :car_make
      t.string :car_model
      t.string :car_color
      t.string :driver_license_img
      t.integer :current_loads
      t.date :start_date
      t.integer :status
      t.text :description

      t.timestamps
    end
  end
end
