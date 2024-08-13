json.extract! landing, :id, :first_name, :last_name, :email, :phone, :location, :content, :created_at, :updated_at
json.url landing_url(landing, format: :json)
