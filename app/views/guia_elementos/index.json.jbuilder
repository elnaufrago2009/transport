json.array!(@guia_elementos) do |guia_elemento|
  json.extract! guia_elemento, :id, :numero_guia_remitente, :guia_id
  json.url guia_elemento_url(guia_elemento, format: :json)
end
