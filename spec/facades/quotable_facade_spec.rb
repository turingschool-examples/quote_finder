require 'rails_helper'

RSpec.describe QuotableFacade do
  describe 'creates poros with json parsed api data', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(QuotableFacade.new).to be_a(QuotableFacade)
    end

    it 'has quote search method to instantiate an array of quote objects' do
      quotes = QuotableFacade.quote_search("magic")

      expect(quotes).to be_a(Array)
      expect(quotes[0]).to be_a(QuoteSearchResult)
      expect(quotes[0].author).to be_a(String)
    end

    it 'returns quote objects with keyword in content string' do
      QuotableFacade.quote_search("magic").each do |quote|
        expect(quote.content).to include("magic")
      end
    end

    it 'has quote search total count method' do
      total_count = QuotableFacade.quote_search_total_count("magic")
      expect(total_count).to be_a(Integer)
    end
  end
end