class Gymleader < ApplicationRecord
    has_many :badges
    has_many :trainers, through: :badges
end
