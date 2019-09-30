class Pokemon < ApplicationRecord
    has_many :poketeams
    has_many :teams, through: :poketeams
end
