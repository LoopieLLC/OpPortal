class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :firstname
      t.string :lastname
      t.integer :confirmation_status
      t.integer :role
      t.date :start_date

      t.timestamps
    end
  end
end
