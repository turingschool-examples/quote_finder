require 'rails_helper'

RSpec.describe 'Quote Facade', do
  it '#top_10_query_quotes' do
    quotes = QuoteFacade.top_10_query_quotes("i am")

    expect(quotes).to be_a(Hash)

    quotes[:results].each do |quote|
      expect(quote[:author]).to be_a(String)#name?
    end
  end

  it 'returns the result count' do
    count = QuoteFacade.quote_count("i am")

    expect(count).to be_a(integer)
  end

end