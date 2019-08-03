class Category < ApplicationRecord
    belongs_to :sport
    has_many :rankings
    has_many :users, through: :rankings

    validates :title, uniqueness: true, presence: true
end
