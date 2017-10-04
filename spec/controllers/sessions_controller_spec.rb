require "rails_helper"

describe Users::SessionsController do
  describe "POST #create" do
    context "logging in" do
      it "redirects to profile after successful log in" do
        user = User.create(email: "test1@test.com", password: "hello")

        post :create, params: {user: {email: user.email, password: user.password}}

        expect(response).to render_template(:show)
      end
    end
  end
end
