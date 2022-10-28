require 'rails_helper'

RSpec.describe QuotesFacade do
  describe '::search(query)' do
    it 'returns an array of quotes matching a query' do
      query = 'I am'
      result = QuotesFacade.search_quotes(query)
      expect(result.first).to be_a Quote
      expect(result.first.content).to include(query)
    end
  end
end