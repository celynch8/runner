json.array!(@users) do |user|
  json.extract! user, :name, :email, :bio, :dob, :gender, :location, :age
  json.url user_url(user, format: :json)
end
