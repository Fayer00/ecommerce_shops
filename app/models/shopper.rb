class Shopper < ApplicationRecord
  has_many :orders

  validates :name, presence: true
  validates :email, presence: true
  validates :nif, presence: true


end
