require 'rails_helper'
RSpec.describe QuoteFacade do 
  it "gets 10 quotes that match with search keyword", :vcr do
    keyword = 'love' 
    quotes = QuoteFacade.search_quotes(keyword)
    expect(quotes[0]).to be_a Quote
    expect(quotes.count).to eq(10)
    expect(quotes[1].content).to be_a String
    expect(quotes[1].author).to be_a String
  end
end