json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :address, :email, :password, :password_confirmation
  json.url profile_url(profile, format: :json)
end
