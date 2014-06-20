json.array!(@orcamentos) do |orcamento|
  json.extract! orcamento, :id, :nome, :valor, :tipo_id, :ano
  json.url orcamento_url(orcamento, format: :json)
end
