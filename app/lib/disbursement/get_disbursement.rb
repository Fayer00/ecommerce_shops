module Disbursement
  class GetDisbursement
    def search(date)

      result = get_disbursements(date)

      return result if result[:status] == 'ERROR'

      { status: 'SUCCESS', result: }.compact
    end

    private

    attr_reader :merchants


    # @param [Object] merchants
    def initialize(merchants:)
      @merchants = merchants
    end

    def get_disbursements(date)
      start_week = date.monday
      disbursements = Disbursement.where(id: @merchants.ids, created_at: start_week)
      if disbursements.empty?
        Disbursement
      end
    rescue => exception
      #raise error to new_relic or similar
      { status: 'ERROR' }
    end
  end
end
