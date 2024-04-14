json.extract! payment_method, :id, :card_number, :expiry_date, :cvv, :members_id, :created_at, :updated_at
json.url payment_method_url(payment_method, format: :json)
