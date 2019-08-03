class Sport < ApplicationRecord
    has_many :categories

    validates :name, uniqueness: true, presence: true
    validates :gender, presence: true
end
