require 'rails_helper'

RSpec.describe QuoteSearchResult do
  describe 'instantiates with parsed api data from quotable facade', vcr: { record: :new_episodes } do
    it 'instantiates' do
      QuotableFacade.quote_search("magic").each do |quote|
        expect(quote).to be_a(QuoteSearchResult)
      end
    end

    it 'returns content, author, and tags array' do
      QuotableFacade.quote_search("magic").each do |quote|
        expect(quote.author).to be_a(String)
        expect(quote.content).to be_a(String)
        expect(quote.tags_array).to be_a(Array)
        expect(quote.tags_array[0]).to be_a(String)
      end
    end
  end
end