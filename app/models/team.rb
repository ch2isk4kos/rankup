class Team < ApplicationRecord
    has_many :players
    has_many :rankings, through: :players
end
