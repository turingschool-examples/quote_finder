require 'rails_helper'

RSpec.describe QuotesService do
  it 'returns an HTTP response of quotes by keyword' do
    quotes = QuotesService.search_by_keyword("I am")

    expect(quotes.count).to eq(151)
    expect(quotes).to be_a(Hash)
    expect(quotes).to have_key(:totalCount)
    expect(quotes[:totalCount]).to be_a(Integer)
    expect(quotes[:results]).to be_an(Array)
    expect(quotes[:results]).to have_key(:content)
    expect(quotes[:results][:content]).to be_a(String)
    expect(quotes[:results]).to have_key(:author)
    expect(quotes[:results][:author]).to be_a(String)
  end
end