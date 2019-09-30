class Team < ApplicationRecord
    has_many :poketeams
    has_many :pokemons, through: :poketeams
end
