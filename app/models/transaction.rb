class Transaction < ApplicationRecord
  belongs_to :company
  validates :buy_sale, :quantity, :price_per_unit, presence: true
end
