require 'spec_helper'

describe "Bookmarks" do

  describe "Index page" do

    it "should have the content 'Listing bookmarks'" do
      visit root_path
      expect(page).to have_content('Listing bookmarks')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Bookmarks App")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "New page" do

    it "should have the content 'New bookmark'" do
      visit '/bookmarks/new'
      expect(page).to have_content('New bookmark')
    end

    it "should have the title 'New Bookmark'" do
      visit '/bookmarks/new'
      expect(page).to have_title("Bookmarks App | New Bookmark")
    end
  end
end