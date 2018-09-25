class CreateWashers < ActiveRecord::Migration[5.2]
  def change
    create_table :washers do |t|
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
      t.text :machine_description
      t.integer :washing_status
      t.integer :confirmation_status
      t.integer :max_loads
      t.integer :current_loads
      t.integer :total_loads_completed
      t.date :start_date

      t.timestamps
    end
  end
end
