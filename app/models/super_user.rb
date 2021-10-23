class Super_User < ApplicationRecord 
    has_secure_password

    validates :email, :user_name, presence: true, uniqueness: true
    validates :first_name, :last_name, presence: true

    has_many :posts
end 