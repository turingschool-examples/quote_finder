require 'rails_helper'

RSpec.describe QuoteFacade do
  it 'finds and creates multiple quotes' do
    quotes = QuoteFacade.find_quotes("divided house")
    quote = quotes.first
    
    expect(quotes).to be_a(Array)
    expect(quote.author).to be_a(String)
    expect(quote.tags).to be_a(Array)
    expect(quotes.last).to be_instance_of(Quote)
  end
end