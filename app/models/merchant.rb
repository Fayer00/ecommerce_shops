class Merchant < ApplicationRecord
  has_many :orders

  validates :name, presence: true
  validates :email, presence: true
  validates :cif, presence: true


  def self.calculate_disbursement(merchants)
    DisbursementWorker.perform(merchants)
  end


end
