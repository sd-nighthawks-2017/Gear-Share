require "rails_helper"

feature "Nonuser reserves item" do

  scenario "via search" do
    item = Item.create(name: "tent")

    visit root_path

    within("#search-form") do
      fill_in "Search Available Gear", with: item.name
    end
    click_on "Search"

    first(".btn-default").click_button "Reserve"

    within(".new-reservation") do
      fill_in "Day", with: "12/1/2017"
      fill_in "City", with: "San Diego"
      fill_in "Message", with: "message"
    end
    click_on "Save Reservation"
    expect(page).to have_content "Day"
  end
end
