class Orcamento < ActiveRecord::Base
  extend FriendlyId
    friendly_id :nome, use: :slugged

    # Try building a slug based on the following fields in
    # increasing order of specificity.
    
  #validates_uniqueness_of :ano, :tipo
end
