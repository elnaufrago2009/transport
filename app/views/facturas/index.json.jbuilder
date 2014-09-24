json.array!(@facturas) do |factura|
  json.extract! factura, :id, :numero_factura_id, :remitente_direccione_id, :condiciones_pago, :valor_venta, :igv, :precio_venta, :placa_id
  json.url factura_url(factura, format: :json)
end
