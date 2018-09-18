class CreateLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :loads do |t|
      t.integer :washer_id
      t.integer :client_id
      t.integer :status

      t.timestamps
    end
  end
end
