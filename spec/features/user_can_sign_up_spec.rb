require 'rails_helper'

RSpec.feature "Sign Up", type: :feature do
  scenario "Users can sign up" do
    visit "/"
    click_link "Sign Up"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "password123"
    click_button "Submit"
    expect(page).to have_content("Sign-up successful")
    expect(current_path).to eq("/posts")
  end
end
