class Orcamento < ActiveRecord::Base
  extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    # Try building a slug based on the following fields in
    # increasing order of specificity.
    def slug_candidates
      [
        [:nome, :ano],
        [:nome, :tipo, :ano],
      ]
    end
  #validates_uniqueness_of :ano, :tipo
end
