require 'rails_helper'

describe Order, type: :model do
  describe "valid object" do
    subject {
      create(:order)
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
    let(:order) { create(:order) }
    let(:completed_order) {  create(:order, completed_at: DateTime.now) }

    it "Include completed" do
      expect(Order.all.completed).to eq completed_order
    end
  end
end