json.array!(@distritos) do |distrito|
  json.extract! distrito, :id, :nombre, :provincia_id
  json.url distrito_url(distrito, format: :json)
end
