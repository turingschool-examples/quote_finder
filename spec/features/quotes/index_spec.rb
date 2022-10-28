require 'rails_helper'

RSpec.describe 'quotes index page' do

  before :each do 
    allow(QuotesService).to receive(:search_quotes).and_return(JSON.parse(file_fixture("life_search_results.json").read, symbolize_names: true))
    @query = "life"
    @quotes = QuotesFacade.get_search_results(@query)[:results]
    @quote_count = QuotesFacade.get_search_results(@query)[:count]
    visit quotes_path(query: @query)
  end

  it 'lists search query' do
    expect(page).to have_content('Search Results for "life"')
  end

  it 'lists total number of results' do
    expect(page).to have_content("#{@quote_count} total results")
  end

  it 'lists each quote with author and categories' do
    @quotes.each do |quote|
      within("#quote-#{quote.id}") do
        expect(page).to have_content("\"#{quote.content}\"")
        expect(page).to have_content("Author: #{quote.author}")
        expect(page).to have_content("Categories: #{quote.tags.join(', ')}")
      end
    end
  end

end