require "rails_helper"

feature "new user registration" do

  scenario "Registering with correct credentials" do
    visit root_path

    within("header") do
      click_link "Sign Up"
    end

    within("#new_user") do
      fill_in "Email", with: "test1@test.com"
      fill_in "Last name", with: "Smith"
      fill_in "Address", with: "707 Broadway San Diego, CA 92101"
      fill_in "Password", with: "password17"
      fill_in "Password confirmation", with: "password17"
    end
    click_button "Sign up"
    expect(page).to have_content "My Gear:"
  end

  scenario "Registering with incorrect credentials" do
    visit root_path

    within("header") do
      click_link "Sign Up"
    end

    within("#new_user") do
      fill_in "Password", with: "hello"
      fill_in "Password confirmation", with: "hello"
    end
    click_button "Sign up"
    expect(page).to have_content "2 errors prohibited this user from being saved:"
  end
end
