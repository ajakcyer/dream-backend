class User < ApplicationRecord
    has_many :entries
    has_many :comments

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
