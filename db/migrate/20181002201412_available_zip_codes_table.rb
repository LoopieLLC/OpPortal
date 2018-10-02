class CreateLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :available_zip_codes do |t|
      t.integer :zip_code
      t.timestamps
    end
  end
end
