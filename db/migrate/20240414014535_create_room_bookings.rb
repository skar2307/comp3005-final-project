class CreateRoomBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :room_bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :rooms, null: false, foreign_key: true
      t.references :trainers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
