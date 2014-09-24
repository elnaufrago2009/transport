json.array!(@numero_guias) do |numero_guia|
  json.extract! numero_guia, :id, :numero
  json.url numero_guia_url(numero_guia, format: :json)
end
