class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :date, :phone_number, :body
  validates :name, :email, :phone_number, :body, presence: true
end
