class Ranking < ApplicationRecord
    # Associated Relationships
    belongs_to :user
    belongs_to :category
    has_many :players
    has_many :teams, through: :players
end
