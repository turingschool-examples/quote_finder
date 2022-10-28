require 'rails_helper'

RSpec.describe 'Landing Page' do
  describe 'When I visit the landing page' do
    it "can fill in form with a keyword, hit submit and redirect to quotes index" do
      visit root_path

      fill_in :keyword, with: 'I am'

      click_on "Search for Quotes"

      expect(current_path).to eq("/quotes")
    end

    it 'displays the total number of quotes for that keyword/lists the keyword/lists the top 10 quotes found' do
      quotes = QuotesFacade.search_by_keyword('I am')

      visit root_path

      fill_in :keyword, with: 'I am'

      click_on "Search for Quotes"

      expect(page).to have_content("Total number of quotes found for 'I am': 151")

      quotes.each do |quote|
        expect(page).to have_content(quote.quote)
        expect(page).to have_content(quote.author)
        quote.categories.each do |category|
          expect(page).to have_content(category)
        end
      end
    end

    it 'does not list any categories for a quote if there are none listed' do
      quote = QuotesFacade.search_by_keyword('I am an optimist').first

      visit root_path

      fill_in :keyword, with: 'I am an optimist'

      click_on "Search for Quotes"

      expect(page).to have_content(quote.author)
      expect(page).to have_content(quote.quote)

      expect(page).to_not have_content(quote.categories)
    end
  end
end