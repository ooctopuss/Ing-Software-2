class Client < ApplicationRecord
  has_many :Invoices, dependent: :destroy

  validates_email_format_of :email, :message => 'is not looking good'
end
