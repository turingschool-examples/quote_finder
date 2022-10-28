require 'rails_helper'

RSpec.describe 'quotes index' do
  it 'will display total number, keyword used, and list of top 10 quotes from search' do
    # As a visitor
    # When I visit the landing page '/'
    visit '/'
    # And fill in the form with a keyword
    fill_in :query, with: 'extreme love'
    # And hit 'Search for Quotes'
    click_on 'Search for Quotes'
    # I am taken to '/quotes'
    expect(current_path).to eq quotes_path
    # Where I see the TOTAL number of quotes that were found for that keyword
    # expect(page).to have_content("Total Count: #{total}")
    # As well as the keyword that's being used for the search
    expect(page).to have_content("Search results for: 'extreme love'")
  end

  it 'will show the top 10 quotes, the author, and the categories of the quote' do
    quotes = QuoteService.search_by_input("love")
    quote = quotes.first

    visit '/'
    fill_in :query, with: 'love'
    click_on 'Search for Quotes'
    # As well as a list of the top 10 quotes that were found
    expect(page).to have_content("Top 10 quotes:")
    save_and_open_page
    expect(page).to have_content(quote.content)
    expect(page).to have_content(quote.author)
    quote.categories.each do |category|
      expect(page).to have_content(category)
    end
  end

end