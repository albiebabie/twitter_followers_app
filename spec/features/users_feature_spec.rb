require 'rails_helper'

feature "Users:" do
  context "that are not signed in with twitter" do
    scenario "are prompted to do so" do
      visit("/")
      expect(page).to have_content("Please sign in to see your followers")
    end
  end
end
