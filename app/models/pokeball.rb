class Pokeball < ApplicationRecord
  belongs_to :pokemon
  belongs_to :trainer

  validates_uniqueness_of :pokemon_id
  
end
