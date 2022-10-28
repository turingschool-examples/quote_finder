require 'rails_helper'

RSpec.describe QuoteFacade do
  it 'can retrive all quotes for a specific keyword' do
    quote_data = QuoteFacade.quotes_by_keyword("love")

    expect(quote_data).to be_a(Hash)
    expect(quote_data).to have_key(:total_quotes)
    expect(quote_data[:total_quotes]).to be_a(Integer)
    expect(quote_data).to have_key(:quotes)
    expect(quote_data[:quotes]).to be_an(Array)
    expect(quote_data[:quotes].count).to eq(10)
    expect(quote_data[:quotes][0]).to be_a(Quote)
  end
end