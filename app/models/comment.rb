class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place

  RATINGS = {
    '1 star': '⭐️',
    '2 stars': '⭐️⭐️',
    '3 stars': '⭐️⭐️⭐️',
    '4 stars': '⭐️⭐️⭐️⭐️',
    '5 stars': '⭐️⭐️⭐️⭐️⭐️'
  }
end

def rating
end
