class Kid < ApplicationRecord
  has_many :transactions,
    after_add: :update_kredits,
    after_remove: :update_kredits

  validates :kredits, numericality: true

  def update_kredits(transaction)
    update_attribute :kredits, transactions.sum(:amount)
  end
end
