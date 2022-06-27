class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :shopper

  scope :completed, -> { where("completed_at is not null") }

  validates :amount, presence: true
  validates_associated :merchant, on: :create
  validates_associated :shopper, on: :create
end
