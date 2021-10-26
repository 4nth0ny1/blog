class User < ApplicationRecord 
    has_secure_password
    has_many :posts

    validates :email, :user_name, presence: true, uniqueness: true
    validates :first_name, :last_name, presence: true

    
end 