require 'rails_helper'

RSpec.describe 'Landing Page' do
  describe 'When I visit the landing page' do
    it "can fill in form with a keyword, hit submit and redirect to quotes index" do
      visit root_path

      fill_in :keyword, with: 'I am'

      click_on "Search for Quotes"

      expect(current_path).to eq("/quotes")
    end

    xit 'displays the total number of quotes for that keyword/lists the keyword/lists the top 10 quotes found' do
      quotes = QuotesFacade.search_by_keyword

      visit root_path

      fill_in :keyword, with: 'I am'

      click_on "Search for Quotes"

      expect(current_path).to eq("/quotes")

      quotes.each do |quote|
        expect(page).to have_content(quote)
      end
    end
  end
end
# As a visitor
# When I visit the landing page '/'
# And fill in the form with a keyword 
# And hit 'Search for Quotes'
# I am taken to '/quotes'
# Where I see the TOTAL number of quotes that were found for that keyword
# As well as the keyword that's being used for the search
# As well as a list of the top 10 quotes that were found

# For each quote listed, I should see: 
# - The quote's author
# - The quote's category(ies) (i.e. tags)
# ```

# Notes:
# - If there are less than 10 quotes found for a particular search, then only return the quotes that were found. 
# - If the quote has no tags associated with it, do not list any categories for that quote.