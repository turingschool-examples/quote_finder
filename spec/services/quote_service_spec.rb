require 'rails_helper'

RSpec.describe QuoteService do
  describe 'class methods' do
    describe 'keyword_quotes' do
      it 'returns the top 10 quotes associated with a keyword' do
        quotes = QuoteService.keyword_quotes(keyword)
        expect(quotes[:results].count).to eq(10)
        expect(quotes[:totalCount]).to be_an(Integer)
        expect(quotes[:results].first[:author]).to be_a(String)
        expect(quotes[:results].first[:tags]).to be_an(Array)
        expect(quotes[:results].first[:tags].first).to be_a(String) unless quotes[:results].first[:tags].empty?
      end
    end
  end
end