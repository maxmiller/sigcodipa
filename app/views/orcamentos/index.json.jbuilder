json.array!(@orcamentos) do |orcamento|
  json.extract! orcamento, :id, :nome, :valor, :slug
  json.url orcamento_url(orcamento, format: :json)
end
