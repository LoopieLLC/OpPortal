class CreateAdminStats < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_stats do |t|
      t.integer :total_users
    end
  end
end
