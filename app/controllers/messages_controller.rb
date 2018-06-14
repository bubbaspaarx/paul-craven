class MessagesController < ApplicationController

  def create
    @message = Message.new message_params
    if @message.valid?
      MessageMailer.email_contact(@message).deliver_now
      MessageMailer.email_enquiry(@message).deliver_now
      flash[:notice] = "We have received your message and will be in touch soon!"
      redirect_to root_path
    else
      flash[:alert] = "There was an error sending your message. Please try again."
      redirect_to root_path
    end
  end
  private
  def message_params
    params.require(:message).permit(:name, :email, :phone_number, :date, :body)
  end
end
