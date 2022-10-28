require 'rails_helper'

RSpec.describe QuotesService do
  it 'returns an HTTP response of quotes by keyword' do
    quotes = QuotesService.search_by_keyword("I am")
    require 'pry' ; binding.pry
    expect(quotes.count).to eq(151)
    expect(quotes)
  end
end