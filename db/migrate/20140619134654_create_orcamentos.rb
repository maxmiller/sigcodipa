class CreateOrcamentos < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.string :nome
      t.float :valor
      t.references :tipo, index: true
      t.integer :ano

      t.timestamps
    end
  end
end
