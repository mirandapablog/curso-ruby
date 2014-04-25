json.array!(@sessions) do |session|
  json.extract! session, :id, :new, :create, :destroy
  json.url session_url(session, format: :json)
end
