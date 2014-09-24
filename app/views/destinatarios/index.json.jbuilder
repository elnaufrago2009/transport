json.array!(@destinatarios) do |destinatario|
  json.extract! destinatario, :id, :nombre_razon, :ruc, :dni
  json.url destinatario_url(destinatario, format: :json)
end
