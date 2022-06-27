require 'rails_helper'

describe Order, type: :model do
  describe "valid object" do
    let(:merchant) { create(:merchant) }
    let(:shopper) { create(:shopper) }
    subject {
      create(:order, merchant_id: merchant.id, shopper_id: shopper.id)
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a amount" do
      subject.amount = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:merchant) }
    it { should belong_to(:shopper)}
  end

  describe "Scopes" do
    let(:merchant) { create(:merchant) }
    let(:shopper) { create(:shopper) }
    let(:order) { create(:order, merchant_id: merchant.id, shopper_id: shopper.id) }
    let(:completed_order) {  create(:order, merchant_id: merchant.id, shopper_id: shopper.id, completed_at: DateTime.now) }

    it "Include completed" do
      expect(Order.all.completed).to eq [completed_order]
    end
  end
end