require 'rails_helper'

RSpec.describe QuotesFacade do
  it 'returns the top 10 quotes by keyword search' do
    quotes = QuotesFacade.search_by_keyword('I am')

    expect(quotes.count).to eq(10)
    expect(quotes).to be_an(Array)
    expect(quotes.first).to be_a(Quote)
  end

  it 'returns the total count of found quotes for a given keyword' do
    total_count = QuotesFacade.total_count_by_keyword("I am")

    expect(total_count).to eq(151)
  end
end