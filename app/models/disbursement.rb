class Disbursement < ApplicationRecord

  def fee(order)
    less_than = ->(n) { 50 < n }
    between = -> (n) { n.between? 50, 300}
    greater_than = ->(n) { 300 > n }

    case order.amount
    when less_than
      #get 1%
    when between
      #get 0.95%
    when greater_than
      #get 0.85
    end
  end

  def calculate
    #calculate disbursement for a merchant on a given week
  end
end
