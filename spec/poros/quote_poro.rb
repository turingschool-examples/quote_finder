require 'rails_helper'

RSpec.describe Quote do
  it 'exists and displays attributes correctly' do
    raw_quote_data = QuoteService.get_quotes("divided house")
    quotes = raw_quote_data[:results]
    quote_data = quotes.first
    quote = Quote.new(quote_data)
    
    expect(quote).to be_instance_of(Quote)
    expect(quote.content).to be_a(String)
    expect(quote.author).to be_a(String)
    expect(quote.tags).to be_a(Array)
  end

end