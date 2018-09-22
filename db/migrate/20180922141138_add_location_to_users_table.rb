class AddLocationToUsersTable < ActiveRecord::Migration[5.2]
  def up
  	add_column :users, :latitude, :float
  	add_column :users, :longitude, :float
  end

  def down
  	remove_column :users, :latitude, :float
  	remove_column :users, :longitude, :float
  end
end
