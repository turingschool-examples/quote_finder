require 'rails_helper'

RSpec.describe QuoteService do
  describe 'returns quotes by keyword' do
    it '#quotes_search', :vcr do
      quotes = QuoteService.quotes_search("every good technology is basically magic")

      expect(quotes[:results]).to be_an(Array)
      expect(quotes[:results][0]).to have_key(:author)
      expect(quotes[:results][0]).to have_key(:tags)
      expect(quotes[:results][0][:tags]).to be_an(Array)
    end
  end
end
