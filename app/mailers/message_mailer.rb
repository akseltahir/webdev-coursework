class MessageMailer < ApplicationMailer

  def contact_me(message)
    @greeting = "Hi"
    @body = message.body

    mail to: "echoUser@example.org", from: message.email
  end

end