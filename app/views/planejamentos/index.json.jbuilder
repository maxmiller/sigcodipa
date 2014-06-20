json.array!(@planejamentos) do |planejamento|
  json.extract! planejamento, :id, :siape, :nome, :email, :tipo_solicitacao, :prioridade, :nome_evento, :empresa, :tipo_empresa, :local_evento, :cnpj, :inicio_evento, :fim_evento, :taxa_inscricao, :valor_passagem, :carga_horaria, :justificativa, :quantidade_aluno
  json.url planejamento_url(planejamento, format: :json)
end
