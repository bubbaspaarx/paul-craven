class MessageMailer < ApplicationMailer
  def email_contact(message)
    @message = message
    mail(to: @message.email, subject: "Paul Craven Enquiry")
  end

  def email_enquiry(message)
    @message = message
    mail(to: "edd_sparks@hotmail.com", subject: "Website Enquiry")
  end
end
