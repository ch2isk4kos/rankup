class Category < ApplicationRecord
    belongs_to :sport
    has_many :rankings
    has_many :users, :rankings
end
