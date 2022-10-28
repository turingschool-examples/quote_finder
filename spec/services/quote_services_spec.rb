require 'rails_helper'

RSpec.describe QuoteService do
  describe '#search_quotes_api_call' do
    it 'returns the quotes for search query' do
      quotes = QuoteService.search_quotes_api_call('I am')

      expect(quotes[:results]).to be_an(Array)

      quotes[:results].each do |quote|
        expect(quote).to have_key(:_id)
        expect(quote[:_id]).to be_a(String)
        expect(quote).to have_key(:content)
        expect(quote[:content]).to be_a(String)
        expect(quote).to have_key(:author)
        expect(quote[:author]).to be_a(String)
        expect(quote).to have_key(:tags)
        expect(quote[:tags]).to be_an(Array)
      end
    end
  end
end