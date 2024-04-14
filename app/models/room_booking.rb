class RoomBooking < ApplicationRecord
  belongs_to :rooms
  belongs_to :trainers
end
