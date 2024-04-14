class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :max_occupancy
      t.boolean :is_booked

      t.timestamps
    end
  end
end
