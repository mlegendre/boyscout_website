class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :description
      t.string :name
      t.string :link_to_badge_icon
      t.string :link_to_badge_form
      t.string :requirements

      t.timestamps
    end
  end
end
