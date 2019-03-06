class User < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { in: 1..15}
    validates :email, presence: true
    validates :email, format: { with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
    validates :password, length: { in: 8..32}
    validates :password, format:{with:/(?=.*?[a-z])(?=.*?[0-9])/i}

    has_secure_password

    has_many :topics
    has_many :favorites
    has_many :comments
    has_many :favorite_topics, through: :favorites, source: 'topic'
    has_many :favorite_topics, through: :favorites, source: 'comment'
end
