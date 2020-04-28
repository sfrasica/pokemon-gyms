class Trainer < ApplicationRecord
    has_many :badges, dependent: :destroy
    has_many :gymleaders, through: :badges

    has_many :pokeballs, dependent: :destroy
    has_many :pokemons, through: :pokeballs

    validates_presence_of :username
    validates_uniqueness_of :username

    def total_badges
        0 + self.badges.count
    end

    def total_pokemons
        0 + self.pokeballs.count
    end

    def can_catch_pokemon
        self.total_badges >= self.total_pokemons
    end

    def can_battle
       !self.can_catch_pokemon
    end

    has_secure_password
end
