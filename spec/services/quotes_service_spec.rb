require 'rails_helper'

RSpec.describe QuotesService do
  describe '::search_quotes(query)' do
    it 'returns a parsed hash from the API' do
      query = 'I am'
      result = QuotesService.search_quotes(query)
      expect(result).to be_a Hash
      expect(result).to have_key :count
      expect(result).to have_key :results
      expect(result[:results]).to be_an Array
    end
  end
end