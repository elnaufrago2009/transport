json.array!(@numero_facturas) do |numero_factura|
  json.extract! numero_factura, :id, :numero
  json.url numero_factura_url(numero_factura, format: :json)
end
