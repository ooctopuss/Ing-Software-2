class Activity < ApplicationRecord
  has_one :Invoice, dependent: :destroy
end
