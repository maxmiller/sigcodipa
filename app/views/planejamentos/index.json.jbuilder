json.array!(@planejamentos) do |planejamento|
  json.extract! planejamento, :id, :funcionario_id, :evento, :local, :tipo_evento, :data_inicio_prevista, :data_fim_prevista, :justificativa, :quantidade_alunos, :valor_passagem, :prioriade, :status, :observacao
  json.url planejamento_url(planejamento, format: :json)
end