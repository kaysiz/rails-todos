require "rails_helper"

feature "User creates todo" do
    scenario "Successfully" do
        visit root_path
        click_on "Add new todo"
        fill_in "Title", with: "Buy milk"
        click_on "Submit"

        expect(page).to have_css ".todo li", text: "Buy milk"
    end
end