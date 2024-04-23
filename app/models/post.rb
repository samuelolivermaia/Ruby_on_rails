class Post < ApplicationRecord
    validates :title, :description, presence: true 
    validates :title, length: {minimum: 5 }
    validates :description, length: {minimum: 15 }

    before_save do 
        self.title = self.title + " Samuel"
    end
end
