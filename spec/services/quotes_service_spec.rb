require 'rails_helper'

RSpec.describe 'Quotes Service' do
  it 'returns Quotes API', :vcr do
    quotes = QuoteService.get_quotes_api_call

    expect(quotes).to be_an(Hash)

    quotes.each do |quote|
      expect(quote[:totalCount]). to be_an(Integer)
      expect(quote[:results]).to be_an(Array)
      expect(quote[:results][:author]).to be_a String
    end
  end

  it 'returns a given query of quotes' do
    quotes = QuoteService.get_search_quotes_api_call("i am")

    expect(quotes).to be_an(Hash)

    quotes[:results].each do |quote|
      expect(quote[:totalCount]). to be_an(Integer)
      expect(quote[:results]).to be_an(Array)
      expect(quote[:results][:author]).to be_a String
    end
  end
end