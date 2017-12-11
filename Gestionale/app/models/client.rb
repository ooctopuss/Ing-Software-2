class Client < ApplicationRecord

  has_many :Invoices, dependent: :destroy

  validates_email_format_of :email, :message => 'is not looking good'
  validates :email, presence: true
  validates :address, presence: true
  validates :p_iva, presence: true, partita_iva_format: true
  validates :cf,  codice_fiscale_format: true, :presence => true, :if => :condition_testing?

  #controllo se si sta inserendo public_authority oppure no, in caso affermativo il codice fiscale non è richiesto
  def condition_testing?
    self.public_authority == false
  end

  #se è public_authority l'iva è a 0 altrimenti a 22
  after_initialize do
    set_iva
  end
  def set_iva
    if self.public_authority == false
      self.iva = 22
    else
      self.iva = 0
    end
  end
end
