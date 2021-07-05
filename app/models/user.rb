class User < ApplicationRecord
    validates :username, presence: true, uniqueness:true, length: {maximum: 20}
    validates :userinfo, length: {maximum: 150}

    has_many :comments
    has_many :posts, through: :comments
end
