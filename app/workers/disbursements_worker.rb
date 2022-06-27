class DisbursementWorker
  include Sidekiq::Worker

  def perform(merchants)
    return unless DateTime.today.monday?
    merchants.each do |merchant|
      merchant.orders.completed.disbursement
    end
  rescue => exception
    #raise error to new_relic or similar
    end
end

