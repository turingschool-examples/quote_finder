require 'rails_helper'

RSpec.describe 'Quotes Facade' do
  it 'returns an array with totalCount, and an array of quote objects' do
    quotes = QuotesFacade.get_quotes('mark twain')

    expect(quotes.length).to eq(2)
    expect(quotes[0]).to eq(21)
    expect(quotes[1].length).to eq(10)
    expect(quotes[1][0].id).to eq("RvqpnaFvABIY")
    expect(quotes[1][0].content).to be_a String
    expect(quotes[1][0].author).to eq('Mark Twain')
    expect(quotes[1][0].tags[0]).to eq('famous-quotes')
  end
end