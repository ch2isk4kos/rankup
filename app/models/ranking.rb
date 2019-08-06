class Ranking < ApplicationRecord
    # Associated Relationships
    belongs_to :user
    belongs_to :category
    has_many :player_rankings
    has_many :players, through: :player_rankings
end
