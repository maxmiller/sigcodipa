json.array!(@tipos) do |tipo|
  json.extract! tipo, :id, :nome, :slug
  json.url tipo_url(tipo, format: :json)
end
