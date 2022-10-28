require 'rails_helper'

RSpec.describe QuoteService do 
  describe 'class methods' do 
    it '#quote_search' do
      results = QuoteService.quote_search('hemingway')
      expect(results).to be_a Hash
      expect(results).to have_key :totalCount
      expect(results[:results]).to be_an Array
      expect(results[:results].length).to be <= 10
      expect(results[:results].first[:author]).to be_a String 
      expect(results[:results].first[:tags]).to be_an Array
    end
  end
end
