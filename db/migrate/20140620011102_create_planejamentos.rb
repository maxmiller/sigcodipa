class CreatePlanejamentos < ActiveRecord::Migration
  def change
    create_table :planejamentos do |t|
      t.string :siape
      t.string :nome
      t.string :email
      t.integer :tipo_solicitacao
      t.integer :prioridade
      t.string :nome_evento
      t.string :empresa
      t.integer :tipo_empresa
      t.string :local_evento
      t.string :cnpj
      t.date :inicio_evento
      t.date :fim_evento
      t.float :taxa_inscricao
      t.float :valor_passagem
      t.integer :carga_horaria
      t.integer :justificativa
      t.integer :quantidade_aluno

      t.timestamps
    end
  end
end
