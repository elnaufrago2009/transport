json.array!(@placas) do |placa|
  json.extract! placa, :id, :nombre
  json.url placa_url(placa, format: :json)
end
