class Transaction < ApplicationRecord
  belongs_to :kid
  belongs_to :parent

  validates :amount, numericality: true
end
