require 'rails_helper'

describe 'Quote Facade' do
  it 'can see quotes by search' do
    VCR.use_cassette('quotes_list') do
      quotes = QuoteFacade.quote_finder("every good technology is basically magic")
      expect(quotes).to be_an(Array)
      expect(quotes.count).to eq(20)
    end
  end
end
