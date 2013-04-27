class NotificationsMailer < ActionMailer::Base

  default :from => "contact@jurgenssmit.com"
  default :to => "contact@jurgenssmit.com"

  def new_message(message)
    @message = message
    mail(:subject => "[jurgenssmit.com] #{message.subject}")
  end

end