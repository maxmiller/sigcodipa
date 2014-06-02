class CreateOrcamentos < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.string :nome
      t.decimal :valor
      t.string :slug

      t.timestamps
    end
  end
end
