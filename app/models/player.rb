class Player < ApplicationRecord
    belongs_to :ranking
    belongs_to :team

    validates :first_name, :last_name, :position, :number, :year, presence: true
    validates_uniqueness_of :year
end
