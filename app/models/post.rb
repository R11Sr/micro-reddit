class Post < ApplicationRecord
    validates :title, presence: true, uniqueness: true, length: {maximum: 40}
    validates :body, presence: true
    validates :user_id, presence: true
    
    has_many :comments
    belongs_to :user
    
end
