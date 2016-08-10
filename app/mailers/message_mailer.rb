class MessageMailer < ApplicationMailer
  default from: "UtauDB@gmail.com"
  default to: "UtauDB@gmail.com"

  def new_message(message)
    @message = message
    mail subject: "Message from #{message.name}"
  end
end
