class Badge < ApplicationRecord
  belongs_to :trainer
  belongs_to :gymleader

  validates_uniqueness_of :gymleader_id
end
