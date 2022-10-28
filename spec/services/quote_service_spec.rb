require 'rails_helper'

RSpec.describe QuoteService do

  it 'returns quotes based on a keyword' do
    quote_raw_data = QuoteService.get_quotes("divided house")
    quote_results = quote_raw_data[:results]
    quote_result_1 = quote_results.first
    
    expect(quote_raw_data).to be_a(Hash)
    expect(quote_results).to be_a(Array)
    expect(quote_result_1).to be_a(Hash)
    expect(quote_result_1).to have_key(:author)
    expect(quote_results.last.keys.count).to eq(9)
  end

  it 'works when nothing matches' do
    quote_raw_data = QuoteService.get_quotes("Aleisha")
    
    
    expect(quote_raw_data[:count]).to eq(0)
    expect(quote_raw_data).to be_a(Hash)
    expect(quote_raw_data[:results]).to be_a(Array)
    expect(quote_raw_data[:results].count).to eq(0)
  end
end
