require 'rails_helper'

RSpec.describe 'Quotes Search' do
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

  describe 'User story 1', vcr: { record: :new_episodes } do
    before :each do
      @keyword = "magic"
      @quotes = QuotableFacade.quote_search("magic")
      @total_count = QuotableFacade.quote_search_total_count("magic")

      visit root_path

      fill_in :keyword, with: 'magic'
  
      click_on "Search for Quotes"

    end
    it 'I search for a keyword on the landing page I am taken to /quotes where I see total number of quotes matching my search' do
      within '#total-count' do
        expect(page).to have_content(@total_count)
      end
    end

    it 'As well as the keyword thats being used for the search' do
      within '#keyword' do
        expect(page).to have_content(@keyword)
      end
    end

    it 'As well as a list of the top 10 quotes that were found including qoute author and categories' do
      @quotes.each do |quote|
        expect(page).to have_content(quote.author)
        expect(page).to have_content(quote.content)
      end
    end

    it 'returns tags if present' do
      @quotes.each do |quote|
        if !quote.tags_array.empty?
          quote.tags_array.each do |tag|
            expect(page).to have_content(tag)
          end
        end
      end
    end

    it 'only lists up to 10 quotes' do
      expect(@quotes.count).to be <= 10
      expect(@total_count).to be <= 10
    end
  end 

end