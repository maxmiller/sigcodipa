class Regra < ActiveRecord::Base
  has_and_belongs_to_many :usuarios, :join_table => :usuarios_regras
  belongs_to :resource, :polymorphic => true
  
  scopify
end
