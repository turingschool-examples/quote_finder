require 'rails_helper'

describe QuotableService do
  context 'class methods' do
    it 'quotes search data' do
      search_data = QuotableService.quotes_search_data('I am')
      expect(search_data).to be_a Hash
      expect(search_data[:totalCount]).to be_an Integer
      expect(search_data[:results]).to be_an Array

      quote_data = search_data[:results].first
      expect(quote_data[:author]).to be_a(String)
      expect(quote_data[:content]).to be_a(String)
      expect(quote_data[:tags]).to be_a(Array)
    end
  end
end