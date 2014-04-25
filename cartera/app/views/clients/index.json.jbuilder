json.array!(@clients) do |client|
  json.extract! client, :id, :name, :tax_code, :address, :balance, :active
  json.url client_url(client, format: :json)
end
