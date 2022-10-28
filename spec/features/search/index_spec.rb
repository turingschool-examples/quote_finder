require 'rails_helper'

RSpec.describe 'Search Controller' do
  describe 'Index' do
    it 'should show the keyword being used in the search' do
      visit root_path

      fill_in :keyword, with: "love"
      click_button "Search for Quotes"

      expect(current_path).to eq '/quotes'
      expect(page).to have_content("Searched for 'Love' Quotes")
    end

    it 'should show the first 10 quotes for the search' do
      #quote consists of an Author and a category/tags
      visit root_path

      fill_in :keyword, with: "love"
      click_button "Search for Quotes"

      expect(page).to have_content("Top Results")
    end

    it 'should show the total number of quotes found for the keyword' do
      visit root_path

      fill_in :keyword, with: "love"
      click_button "Search for Quotes"

      expect(page).to have_content("Total Results")
    end
  end
end