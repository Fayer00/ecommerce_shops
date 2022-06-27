require 'rails_helper'

describe Shopper, type: :model do

  describe "valid object" do
    subject {
      create(:merchant)
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a nif" do
      subject.nif = nil
      expect(subject).to_not be_valid
    end
  end
end