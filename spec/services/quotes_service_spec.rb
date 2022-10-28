require 'rails_helper'

RSpec.describe QuotesService do
  it 'returns an HTTP response of top 10 quotes by keyword' do
    quotes = QuotesService.search_by_keyword("I am")

    expect(quotes).to be_a(Hash)
    expect(quotes).to have_key(:totalCount)
    expect(quotes[:totalCount]).to be_a(Integer)
    expect(quotes[:results].count).to eq(10)
    expect(quotes[:results]).to be_an(Array)
    expect(quotes[:results][0]).to have_key(:content)
    expect(quotes[:results][0][:content]).to be_a(String)
    expect(quotes[:results][0]).to have_key(:author)
    expect(quotes[:results][0][:author]).to be_a(String)
  end
end