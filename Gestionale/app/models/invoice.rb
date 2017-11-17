class Invoice < ApplicationRecord
  belongs_to :client
  belongs_to :activity

  validates :date_of_issue, presence: true

  after_initialize do
    if new_record?
      self.hours_standard=0
      self.rate_hour_standard=0
      self.hours_extra=0
      self.rate_hour_extra=0

    end
    def rate
      (self.hours_standard * self.rate_hour_standard + self.hours_extra * self.rate_hour_extra)+(self.hours_standard * self.rate_hour_standard + self.hours_extra * self.rate_hour_extra)*22/100
    end
    self.total_amount= rate
  end


end
