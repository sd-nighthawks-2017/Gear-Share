require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:item) { Item.new(name: "tent", description: "3 person", reservation_id: 3, renter_id: 4, user_id: 5) }
  let(:user) {User.new(email: "js@gmail.com", username:"js", first_name:"Joe", last_name:"Shmoe", location: "1300 wonder court", birthdate: "2012-12-12") }
  let(:review) {Review.new(title: "Very Generous", body: "Joe was great and gave me free propane too!", rating: 5, user_id: 2, reviewer_id: 3)}
  context "Attributes" do
    it "should have a title" do
      expect(review.title).to eq ("Very Generous")
    end
    it "should have a body" do
      expect(review.body).to eq ("Joe was great and gave me free propane too!")
    end
     it "should have a rating" do
      expect(review.rating).to eq (5)
    end
  end
  context "Associations" do
    it { should belong_to(:user) }
    it { should belong_to(:reviewer) }
  end
end
