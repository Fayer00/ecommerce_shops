
# frozen_string_literal: true

class MerchantsController < ApplicationController
  before_action :load_merchants, only: [:show]
  def index
    @Merchants = Merchant.all.pluck(:name, :email)
  end

  def show
    disbursement = Disbursement::GetDisbursement.new(merchants: @Merchants)
    result = disbursement.search(params[:date])
    status = result[:errors].present? ? :bad_request : :ok
    render json: result.to_json, status: status
  end

  private

  def load_merchants
    @merchants = params[:merchant_id].present? ? Merchant.find(params[:merchant_id]) : Merchant.all
  end

end
