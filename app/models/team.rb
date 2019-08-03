class Team < ApplicationRecord
    has_many :players
    has_many :rankings, through: :players

    validates :city, :name, :year, presence: true
    validates_uniqueness_of :year
end
