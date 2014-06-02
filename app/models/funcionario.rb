class Funcionario < ActiveRecord::Base
  
validates_numericality_of :siape,  :message => "não é um número"
validates_presence_of :siape, :nome , :message => "não pode ser nulo"
end
