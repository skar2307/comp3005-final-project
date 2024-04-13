class CreateEquipment < ActiveRecord::Migration[7.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :description
      t.date :most_recently_used
      t.date :most_recently_maintained

      t.timestamps
    end
  end
end
