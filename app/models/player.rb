class Player < ApplicationRecord
    belongs_to :ranking
    belongs_to :team
end
