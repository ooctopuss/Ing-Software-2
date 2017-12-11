class Invoice < ApplicationRecord
  belongs_to :client
  belongs_to :activity

  validates :date_of_issue, presence: true
  validates :hours_standard, :numericality => {:greater_than =>0}
  validates :rate_hour_standard, :numericality => {:greater_than =>0}
  validates :hours_extra, :numericality => {:greater_than_or_equal_to =>0}
  validates :rate_hour_extra, :numericality => {:greater_than_or_equal_to =>0}

  before_save {
    iva = (self.client.iva) || 0
    self.total_amount = rate + (rate * iva)/100
  }
  def rate
    (self.hours_standard * self.rate_hour_standard + self.hours_extra * self.rate_hour_extra)
  end
end
