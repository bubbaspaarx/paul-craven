module ApplicationHelper
  def resource_name
    :message
  end

  def resource
    @resource ||= Message.new
  end
end
