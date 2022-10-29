require 'rails_helper'

RSpec.describe QuotesFacade do
  describe 'class methods' do
    describe 'keyword_quotes_search' do
      it 'returns a hash' do
        require 'pry'; binding.pry
        expect(QuotesFacade.keyword_quotes_search('find')).to be_a(Hash)
      end

      it 'has a total_results key' do
        expect(QuotesFacade.keyword_quotes_search('find')[:total_results]).to be_an(Integer)

      end

      it 'has a keyword key' do
        expect(QuotesFacade.keyword_quotes_search('find')[:keyword]).to eq('find')

      end

      it 'has a quotes key with 10 quote class objects inside' do
        keyword_search = QuotesFacade.keyword_quotes_search(find)
        expect(keyword_search[:quotes].count).to eq(10)
        expect(keyword_search[:quotes].first).to be_a(Quote)
      end
    end
  end
end