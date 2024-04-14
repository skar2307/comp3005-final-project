json.extract! fitness_goal, :id, :name, :description, :start_date, :end_date, :starting_value, :ending_value, :members_id, :created_at, :updated_at
json.url fitness_goal_url(fitness_goal, format: :json)
