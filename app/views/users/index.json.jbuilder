json.array!(@users) do |user|
  json.extract! user, :id, :name, :file_upload, :string_upload
  json.url user_url(user, format: :json)
end
