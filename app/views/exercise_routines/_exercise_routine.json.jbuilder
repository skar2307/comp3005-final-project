json.extract! exercise_routine, :id, :title, :days_per_week, :description, :created_at, :updated_at
json.url exercise_routine_url(exercise_routine, format: :json)
