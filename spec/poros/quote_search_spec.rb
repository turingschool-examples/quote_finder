require 'rails_helper'

RSpec.describe QuoteSearch do 
  before :each do 
    quote_data = {
      count: 2,
      totalCount: 2,
      page: 1,
      totalPages: 1,
      lastItemIndex: 'null',
      results: [
          {
              _id: "NcbrYrPkqmiL",
              content: "But man is not made for defeat. A man can be destroyed but not defeated.",
              author: "Ernest Hemingway",
              tags: [
                  "famous-quotes",
                  "wisdom"
              ]
            }
      ]
    }
    @quote = QuoteSearch.new(quote_data)
  end
  it 'exists' do 
    expect(@quote).to be_a QuoteSearch
  end

  it 'has attributes' do 
    expect(@quote.num_results).to eq(2)
    expect(@quote.quotes).to be_an Array
    expect(@quote.quotes).to all be_a Quote
  end
end