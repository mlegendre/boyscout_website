class CreateScouts < ActiveRecord::Migration
  def change
    create_table :scouts do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.boolean :rank
      t.boolean :badges
      t.string :city
      t.integer :zip

      t.timestamps
    end
  end
end
