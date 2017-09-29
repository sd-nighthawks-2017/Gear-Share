require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { User.new }

  context "when email is empty" do
    it "should not be valid" do
      expect(user.valid?).to be false
    end

    it "should not save" do
      expect(user.save).to be false
    end
  end
end
