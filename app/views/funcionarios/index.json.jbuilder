json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :siape, :nome, :slug
  json.url funcionario_url(funcionario, format: :json)
end
