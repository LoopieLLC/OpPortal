class CreateAvailableZipCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :available_zip_codes do |t|
      t.string :zip_code

      t.timestamps
    end
  end
end
