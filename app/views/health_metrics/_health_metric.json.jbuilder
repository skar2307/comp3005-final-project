json.extract! health_metric, :id, :name, :value, :members_id, :created_at, :updated_at
json.url health_metric_url(health_metric, format: :json)
