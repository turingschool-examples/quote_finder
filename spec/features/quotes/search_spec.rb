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

  describe 'Sad Path' do
    describe 'If there are less than 10 quotes found for a particular search' do
      it 'only returns the quotes that were found' do
        @search = 'victory'
        @quotes = QuotesFacade.find_quotes(@search)
        @results_count = QuotesFacade.results_count(@search)
  
        visit root_path
        fill_in :keyword, with: "#{@search}"
        click_on 'Search for Quotes'
  
        within('#search_results') do
          @quotes.count == 6
        end
      end
    end

    # describe 'If there are no tags associated with it' do
    #   it 'no categories are listed for that quote' do
    #     quote_data1 = {
    #       "_id": "OHNMF1vCnPFE",
    #       "content": "If I am not for myself, who will be for me? If I am not for others, what am I? And if not now, when?",
    #       "author": "Rabbi Hillel",
    #       "tags": [],
    #       "authorId": "cII2_MfYV9sI",
    #       "authorSlug": "rabbi-hillel",
    #       "length": 100,
    #       "dateAdded": "2019-01-08",
    #       "dateModified": "2022-07-04"
    #     }

    #     quote_data2 = {
    #       "_id": "V5ekc_oeKEV",
    #       "content": "Victory belongs to the most persevering.",
    #       "author": "Napoleon",
    #       "tags": [
    #           "famous-quotes"
    #       ],
    #       "authorId": "xlnMchFC2VJG",
    #       "authorSlug": "napoleon",
    #       "length": 40,
    #       "dateAdded": "2019-12-14",
    #       "dateModified": "2019-12-14"
    #     }
    #     @quotes = [Quote.new(quote_data1), Quote.new(quote_data2)]

    #     allow_any_instance_of(QuotesController).to receive(:search).and_return(@quotes)

    #     # visit root_path
    #     # fill_in :keyword, with: "search"
    #     # click_on 'Search for Quotes'
      # end
    # end
  end
end
