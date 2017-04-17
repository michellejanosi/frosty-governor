class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place
  after_create :send_comment_email

  RATINGS = {
    '1 star': '⭐️',
    '2 stars': '⭐️⭐️',
    '3 stars': '⭐️⭐️⭐️',
    '4 stars': '⭐️⭐️⭐️⭐️',
    '5 stars': '⭐️⭐️⭐️⭐️⭐️'
  }

  def send_comment_email
    NotificationMailer.comment_added(self).deliver
  end
end

def rating
end
