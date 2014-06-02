class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :siape
      t.string :nome
      t.string :slug

      t.timestamps
    end
  end
end
