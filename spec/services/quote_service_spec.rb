require 'rails_helper'

RSpec.describe 'QuotesService' do
  context 'happy path' do
    it 'retrieves quotes from a keyword search', :vcr do
      keyword = 'love' 
      parsed_json = QuoteService.get_quotes_by_search(keyword)
      expect(parsed_json).to be_a Hash
      expect(parsed_json[:results]).to be_a Array
      expect(parsed_json[:results][0][:content]).to be_a String
      expect(parsed_json[:results][0][:author]).to be_a String
    end
  end
end