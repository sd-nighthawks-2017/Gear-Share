require 'rails_helper'

RSpec.describe Reservation, :type => :model do
  let(:reservation) { Reservation.new(item_id: 1, user_id: 2, renter_id: 3, message: "Hey can I borrow your tent?")}

  context "Attributes" do
    it "should have an item_id" do
      expect(reservation.item_id).to eq (1)
    end

    it "should have a user_id" do
      expect(reservation.user_id).to eq (2)
    end

    it "should have a renter_id" do
      expect(reservation.renter_id).to eq (3)
    end

    it "should have a message" do
      expect(reservation.message).to eq ("Hey can I borrow your tent?")
    end
  end

  context "Associations" do
    it { should belong_to(:user) }
    it { should belong_to(:item) }
    it { should belong_to(:renter) }

    it {should have_many(:dialogs) }

  end
end
