json.array!(@guias) do |guia|
  json.extract! guia, :id, :numero_guia_id, :fecha_emision, :fecha_traslado, :partida_direccion, :partida_distrito_id, :llegada_direccion, :llegada_distrito_id, :remitente_id, :destinatario_id, :marca_vehiculo, :placa_id, :configuracion_vehicular, :numero_certificado_inscripcion, :licencia_conducir
  json.url guia_url(guia, format: :json)
end
