require 'rails_helper'

RSpec.describe 'quotes index page' do
  it 'displays the total number of quotes that were found for the filled in keyword as well as the keyword used' do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(page).to have_content("Total Count: 151")

    within("#keyword") do
      expect(page).to have_content("Keyword Used: I am")
    end
  end

  it 'displays the lop list of 10 quotes along with the author and category' do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    quote = QuoteFacade.quote_search('I am')[:results].first

    within("#top_10_quote_results") do
      expect(page).to have_content("#{quote.content}")
      expect(page).to have_content("Author: #{quote.author}")
      expect(page).to have_content("Category: #{quote.category}")
    end
  end

  describe 'edge case testing' do
    it 'displays the quotes that were found if there were less than 10' do
      visit root_path

      fill_in :keyword, with: 'Mary'

      click_on "Search for Quotes"

      expect(page).to have_content("Total Count: 6")
    end
  end
end
