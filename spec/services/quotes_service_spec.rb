require 'rails_helper'

RSpec.describe 'Quotes Service' do
  it 'returns Quotes API', :vcr do
    quotes = QuoteService.get_quotes_api_call

    expect(quotes).to be_an(Array)#Hash?

    quotes.each do |quote|
      expect(quote[:totalCount]). to be_an(Integer)
      expect(quote[:results]).to be_an(Array)
      expect(quote[:results][:author]).to be_a String
    end
  end
end