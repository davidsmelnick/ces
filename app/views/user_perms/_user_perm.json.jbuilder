json.extract! user_perm, :id, :user_id, :perm_id, :created_at, :updated_at
json.url user_perm_url(user_perm, format: :json)
