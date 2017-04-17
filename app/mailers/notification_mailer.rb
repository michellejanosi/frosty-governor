class NotificationMailer < ApplicationMailer
  default from: "no-reply@frostygovernor.co.uk"

  def comment_added
    mail(to: "michellexj11@gmail.com",
      subject: "A comment has been added to your pub.")
  end
end
