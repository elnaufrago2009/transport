json.array!(@factura_elementos) do |factura_elemento|
  json.extract! factura_elemento, :id, :primera_guia_id, :segunda_guia_id, :factura_id, :precio
  json.url factura_elemento_url(factura_elemento, format: :json)
end
