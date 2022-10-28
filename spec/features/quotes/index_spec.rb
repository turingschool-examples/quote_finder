require 'rails_helper'

RSpec.describe '/quotes' do
  it 'displays search results' do
    query = 'I+am'
    quotes = QuotesFacade.search_quotes(query)
    quote = quotes.first

    visit root_path

    fill_in :keyword, with: query

    click_on "Search for Quotes"
    expect(page).to have_content("#{quotes.count} quotes found!")
    expect(page).to have_content(quote.content)
    expect(page).to have_content(quote.author)
    expect(page).to have_content(quote.tags)
  end

  it 'redirects to the search page if no quotes are found' do
    query = 'xysisaj'

    visit root_path
    fill_in :keyword, with: query
    click_on "Search for Quotes"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Unable to locate quotes, try again")
  end
end