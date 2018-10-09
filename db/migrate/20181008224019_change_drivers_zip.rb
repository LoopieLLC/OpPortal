class ChangeDriversZip < ActiveRecord::Migration[5.2]
  def change
    rename_column :drivers, :zip, :zip_code
  end
end
