require 'rails_helper'

RSpec.describe 'Quotes Search' do
  describe 'Happy Path' do
    before :each do
      @search = 'I am'
      @quotes = QuotesFacade.find_quotes(@search)
      @results_count = QuotesFacade.results_count(@search)

      visit root_path
      fill_in :keyword, with: "#{@search}"
      click_on 'Search for Quotes'
    end

    it 'has the total number of quotes that were found for a keyword' do
      expect(page).to have_content("Total Results: #{@results_count}")
    end

    it 'has the keyword that is being used for the search' do
      expect(page).to have_content("Results for '#{@search}'")
    end

    it 'has a list of the top 10 quotes that were found' do
      within('#search_results') do
        @quotes.count == 10
      end
    end

    describe 'Each quote listed' do
      it 'has the quotes author' do
        within('#search_results') do
          @quotes.first(10).each do |quote|
            expect(page).to have_content(quote.author)
          end
        end
      end

      it 'has the quotes category(ies) listed' do
        within('#search_results') do
          @quotes.first(10).each do |quote|
            quote.categories.each do |category|
              expect(page).to have_content(category.capitalize)
            end
          end
        end
      end
    end
  end
end
