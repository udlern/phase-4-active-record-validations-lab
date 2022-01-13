class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :title_clickbait
   

   def title_clickbait
    if title == "True Facts"
        errors.add(:title, "Can't be this title!")
    end


   end
end
