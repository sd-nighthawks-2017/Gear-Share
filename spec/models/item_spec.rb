require 'rails_helper'

RSpec.describe Item, :type => :model do
  let(:item) { Item.new(name: "tent", description: "3 person", reservation_id: 3, renter_id: 4, user_id: 5) }
  let(:user) {User.new(email: "js@gmail.com", username:"js", first_name:"Joe", last_name:"Shmoe", location: "1300 wonder court", birthdate: "2012-12-12") }
  let(:reservation) {Reservation.new(item_id: 1, user_id: 2, renter_id: 3, message: "Hey can I borrow your tent?")}
  context "Attributes" do
    it "should have a name" do
      expect(item.name).to eq ("tent")
    end

    it "should have a description" do
      expect(item.description).to eq "3 person"
    end

    it "should have a reservation id" do
      expect(item.reservation_id).to eq 3
    end

    it "should have a renter id" do
      expect(item.renter_id).to eq 4
    end

    it "should have a user id" do
      expect(item.user_id).to eq 5
    end
  end

  context "Associations" do
    it { should belong_to(:user) }
    it {should have_many(:reservations) }
  end
end
