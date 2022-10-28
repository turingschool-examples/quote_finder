require 'rails_helper'
RSpec.describe 'Quotes API Services' do
  describe 'endpoints' do
    it 'can return relevant quotes from the quotefinder api' do
      response = QuotesService.searched_quotes("hands")
      expect(response).to be_an Hash

      quotes_list = response[:results]
      expect(quotes_list).to be_an Array

      quote_details = quotes_list.first
      expect(quote_details).to have_key :content
      expect(quote_details[:content]).to be_a(String)

      expect(quote_details).to have_key :author
      expect(quote_details[:author]).to be_a(String)

      expect(quote_details).to have_key :tags
      expect(quote_details[:tags]).to be_an(Array)
    end

    it 'returns all available results for a search, (max limit)' do
    end
  end
end