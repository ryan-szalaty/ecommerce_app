class User < ApplicationRecord
    has_many :items
    validates :username, presence: true
    validates :email, presence: true
    validates :password, presence: true, length: {minimum: 6}
end
