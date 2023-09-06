json.extract! user, :id, :first_name, :last_name, :gender, :birthdate, :email, :address, :housing_type, :country, :department, :city, :created_at, :updated_at
json.url user_url(user, format: :json)
