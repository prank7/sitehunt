json.array!(@users) do |user|
  json.extract! user, :id, :provider, :uid, :name, :image, :username, :description, :token, :secret
  json.url user_url(user, format: :json)
end
