class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :description
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
