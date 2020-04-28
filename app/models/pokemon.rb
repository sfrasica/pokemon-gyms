class Pokemon < ApplicationRecord
    has_many :pokeballs, dependent: :destroy
    has_many :trainers, through: :pokeballs

    def self.starters
        starters = [Pokemon.all[24], Pokemon.all[132], Pokemon.first, Pokemon.fourth, Pokemon.all[6]]
    end

    def poke_phrase
        ["Never give up!", "Put me in coach!", "I can't wait to battle!", "Please give me belly rubs", "Why won't you love me??", "Mod2izfun"].sample
    end

end
