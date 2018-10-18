class AddForeignKeyUsers < ActiveRecord::Migration[5.2]
  def change
  	#add_reference :washers, :users
  	#add_reference :drivers, :users
  	add_reference :washers, :users, foreign_key: { to_table: :users }
  	add_reference :drivers, :users, foreign_key: { to_table: :users }

  end
end
