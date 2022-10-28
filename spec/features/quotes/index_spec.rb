require 'rails_helper'

RSpec.describe '/quotes' do
  it 'displays search results' do
    query = 'I am'
    quotes = QuotesFacade.top_10(query)
    quote = quotes.sample

    visit root_path

    fill_in :keyword, with: query

    click_on "Search for Quotes"

    expect(page).to have_content(quote.content)
    expect(page).to have_content(quote.author)
    quote.tags.each do |tag|
      expect(page).to have_content(tag)
    end
  end
end