class AddPassesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :passes, :string
  end
end
