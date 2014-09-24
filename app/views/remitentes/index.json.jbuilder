json.array!(@remitentes) do |remitente|
  json.extract! remitente, :id, :nombre_razon, :ruc, :dni
  json.url remitente_url(remitente, format: :json)
end
