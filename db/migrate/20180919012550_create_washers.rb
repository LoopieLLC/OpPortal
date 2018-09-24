class CreateWashers < ActiveRecord::Migration[5.2]
  def change
    create_table :washers do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :email
      t.string :address
      t.integer :washing_status
      t.integer :max_loads
      t.integer :current_loads
      t.integer :total_loads_completed
      t.text :machine_description
      t.date :start_date
      t.integer :confirmation_status

      t.timestamps
    end
  end
end
