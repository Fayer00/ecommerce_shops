require "rails_helper"

RSpec.describe MerchantsController, type: :request do
  subject { response }

  describe "GET /show" do
    let(:merchant) {create(:merchant)}
    let(:params) do
      {
        merchant_id: merchant.id,
        date: DateTime.now
      }
    end

    before do
      get "/merchants", params: params
    end

    it { expect(response).to have_http_status(:ok) }
  end
end