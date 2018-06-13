class MessageMailer < ApplicationMailer
require 'mailgun'
  def email_contact(message)
    @message = message
    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']
    message_params = {:from => message.email,
                      :to => ENV['email'],
                      :subject => 'Paul Craven Enquiry',
                      :text => message.body}
    mg_client.send_message ENV['mailgun_domain'], message_params
  end

  def email_enquiry(message)
    @message = message
    mail(to: "edd_sparks@hotmail.com", subject: "Website Enquiry")
  end
end
