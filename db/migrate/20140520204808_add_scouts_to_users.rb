class AddScoutsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :scout, :boolean
    add_column :users, :rank, :string
    add_column :users, :badges, :string
    add_column :users, :address, :string
  end
end
