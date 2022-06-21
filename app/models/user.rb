class User < ApplicationRecord
    has_many :items, dependent: :destroy
    validates :username, presence: true
    validates :email, presence: true
    validates :password, presence: true, length: {minimum: 6}
end
