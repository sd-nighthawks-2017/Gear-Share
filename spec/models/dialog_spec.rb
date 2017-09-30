require 'rails_helper'

RSpec.describe Dialog, :type => :model do
  let(:dialog) { Dialog.new(username: "Joey", reservation_id: 1, user_id: 2, renter_id: 3, body: "Sure, come on by my place at 8?")}

  context "Attributes" do
    it "should have a username" do
      expect(dialog.username).to eq ("Joey")
    end

    it "should have a reservation_id" do
      expect(dialog.reservation_id).to eq (1)
    end

    it "should have a user_id" do
      expect(dialog.user_id).to eq (2)
    end

    it "should have a renter_id" do
      expect(dialog.renter_id).to eq (3)
    end

    it "should have a body" do
      expect(dialog.body).to eq ("Sure, come on by my place at 8?")
    end
  end
  context "Associations" do
    it { should belong_to(:reservation) }
  end
end
