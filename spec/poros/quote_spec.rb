require 'rails_helper'

RSpec.describe Quote do 
  before :each do 
    quote_data = {
      "count": 2,
      "totalCount": 2,
      "page": 1,
      "totalPages": 1,
      "lastItemIndex": null,
      "results": [
          {
              "_id": "NcbrYrPkqmiL",
              "content": "But man is not made for defeat. A man can be destroyed but not defeated.",
              "author": "Ernest Hemingway",
              "tags": [
                  "famous-quotes",
                  "wisdom"
              ]
            }
    }
    @quote = Quote.new(quote_data)
  end
  it 'exists' do 
    expect(@quote).to be_a Quote
  end

  it 'has attributes' do 
    expect(@quote.num_results).to eq(2)
    expect(@quote.author).to eq("Ernest Hemingway")
    expect(@quote.category).to eq(["famous-quotes", "wisdom"])
    expect(@quote.content).to eq('But man is not made for defeat. A man can be destroyed but not defeated.')
  end
end