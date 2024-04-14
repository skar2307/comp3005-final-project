json.extract! personal_training_session, :id, :name, :description, :start_time, :end_time, :member_id_id, :trainer_id_id, :created_at, :updated_at
json.url personal_training_session_url(personal_training_session, format: :json)
