class AddPasswordDigestToWashers < ActiveRecord::Migration[5.2]
  def change
    add_column :washers, :password_digest, :string
  end
end
