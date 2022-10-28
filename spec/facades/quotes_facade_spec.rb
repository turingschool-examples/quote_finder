require 'rails_helper'

RSpec.describe QuotesFacade do
  describe '::top_10(query)' do
    it 'returns an array of 10 (or less) quotes matching a query' do
      query = 'I am'
      result = QuotesFacade.top_10(query)
      expect(result.count).to be <= 10
      expect(result.first).to be_a Quote
      expect(result.first.content).to include(query)
    end
  end
end