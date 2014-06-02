class AddTypeToOrcamentos < ActiveRecord::Migration
  def change
    add_column :orcamentos, :tipo, :integer
    add_column :orcamentos, :ano, :integer
  end
end
