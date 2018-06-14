class Message
  module ActiveModel::Validations::HelperMethods
    def validates_email(*attr_names)
      validates_with EmailValidator, _merge_attributes(attr_names)
    end
  end
  include ActiveModel::Model
  include ActiveModel::Validations
  attr_accessor :name, :email, :date, :phone_number, :body
  validates :name, :email, :phone_number, :body, presence: true
end
