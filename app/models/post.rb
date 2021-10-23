class Post < ApplicationRecord 

    belongs_to :super_user
    
    validates :title, :content, presence: true

end 