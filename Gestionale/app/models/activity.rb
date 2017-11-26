class Activity < ApplicationRecord
  has_one :Invoice, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
end
