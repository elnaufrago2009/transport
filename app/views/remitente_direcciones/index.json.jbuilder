json.array!(@remitente_direcciones) do |remitente_direccione|
  json.extract! remitente_direccione, :id, :direccion, :remitente_id
  json.url remitente_direccione_url(remitente_direccione, format: :json)
end
