json.array!(@provincias) do |provincia|
  json.extract! provincia, :id, :nombre, :departamento_id
  json.url provincia_url(provincia, format: :json)
end
