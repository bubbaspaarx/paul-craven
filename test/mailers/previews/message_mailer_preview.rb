# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact
  def email_contact
    @message = Message.new(name: "Ed", email: "ed@ed.com", phone_number: "077532444", date: "june", body: "asjnvksdn skjnfkjs kjfjsd k")
    MessageMailer.email_contact(@message)
  end

end
