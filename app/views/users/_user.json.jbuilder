json.extract! user, :id, :name, :username, :password, :email, :admin, :document, :notification, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
