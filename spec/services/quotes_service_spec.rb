require 'rails_helper'
RSpec.describe 'Quotes API Services' do
  describe 'endpoints' do
    it 'can return relevant quotes from the quotefinder api' do
      quotes = QuotesService.searched_quotes("hands")
      expect(quotes).to be_an Hash
    end
  end
end