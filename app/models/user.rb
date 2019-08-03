class User < ApplicationRecord
    has_secure_password

    has_many :rankings
    has_many :categories, through: :rankings

    # user must provide a unique username && email
    validates :username, :email, presence: true, uniqueness: true
end
