json.extract! room_booking, :id, :start_date, :end_date, :rooms_id, :trainers_id, :created_at, :updated_at
json.url room_booking_url(room_booking, format: :json)
