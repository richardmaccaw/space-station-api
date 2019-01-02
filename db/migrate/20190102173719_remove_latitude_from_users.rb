class RemoveLatitudeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :latitude, :decimal
    remove_column :users, :longitude, :decimal
  end
end
