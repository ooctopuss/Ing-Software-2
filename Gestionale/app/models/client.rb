class Client < ApplicationRecord
  has_many :Invoices, dependent: :destroy

  validates_email_format_of :email, :message => 'is not looking good'
  validates :email, presence: true
  validates :address, presence: true
  validates :cf, presence: true, codice_fiscale_format: true
  validates :p_iva, presence: true, partita_iva_format: true
end
