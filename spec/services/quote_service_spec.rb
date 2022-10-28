require 'rails_helper'

RSpec.describe QuoteService do
  it 'retrieves top ten quotes by keyword' do
    quotes = QuoteService.quote_search('happiness')

    expect(quotes.count).to eq 10
    expect(quotes).to be_an Array

    quotes.each do |quote|
      expect(quote).to have_key(:_id)
      expect(quote[:_id]).to be_a String
      expect(quote).to have_key(:content)
      expect(quote[:content]).to be_a String
      expect(quote).to have_key(:author)
      expect(quote[:author]).to be_a String
      expect(quote).to have_key(:tags)
      expect(quote[:tags]).to be_an Array
        quote[:tags].each do |tag|
          expect(tag).to be_a String
        end
    end
  end
end
