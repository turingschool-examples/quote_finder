require 'rails_helper'

RSpec.describe QuoteService do
  context 'instance methods' do
    context '#get_quote_search(quote)' do
      it 'returns quote data' do
        query = QuoteService.new
        quote = query.get_quotes_search('shadows')

        expect(quote).to be_a(Hash)

        expect(quote).to have_key(:totalCount)
        expect(quote[:totalCount]).to be_a(Integer)

        expect(quote).to have_key(:results)
        expect(quote[:results]).to be_a(Array)

        first_quote = quote[:results].first

        expect(first_quote).to have_key(:author)
        expect(first_quote[:author]).to be_a(String)

        expect(first_quote).to have_key(:tags)
        expect(first_quote[:tags].first).to be_a(String)
      end
    end
  end
end
