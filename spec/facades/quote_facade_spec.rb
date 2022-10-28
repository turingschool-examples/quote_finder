require 'rails_helper'

RSpec.describe QuoteFacade do
  it 'is an array of Quote objects' do
    quotes = QuoteFacade.quotes('happiness')

    expect(quotes).to be_an Array
    expect(quotes).to be_all Quote

    quotes.each do |quote|
      expect(quote.id).to be_a String
      expect(quote.content).to be_a String
      expect(quote.author).to be_a String
      expect(quote.tags).to be_a String
    end
  end
end
