class CreatePlanejamentos < ActiveRecord::Migration
  def change
    create_table :planejamentos do |t|
      t.references :funcionario, index: true
      t.string :evento
      t.string :local
      t.integer :tipo_evento
      t.date :data_inicio_prevista
      t.date :data_fim_prevista
      t.string :justificativa
      t.integer :quantidade_alunos
      t.decimal :valor_passagem
      t.integer :prioriade
      t.integer :status
      t.string :observacao

      t.timestamps
    end
  end
end
