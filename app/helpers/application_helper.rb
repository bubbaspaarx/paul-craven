module ApplicationHelper
  def resource_name
    :message
  end

  def resource
    @message ||= Message.new
  end
end
