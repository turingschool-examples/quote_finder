require 'rails_helper'

RSpec.describe QuotesFacade do
  describe 'quotes facade' do
    it '#searched_quotes' do
      quotes = QuotesFacade.searched_quotes('I am')

      expect(quotes).to be_an Hash
      expect(quotes[:totalCount]).to eq(151)
    end

    it "#make_objects" do
      quotes = QuotesFacade.searched_quotes('I am')
      quote_objects = QuotesFacade.make_objects(quotes)

      expect(quote_objects.count).to eq(10)
      quote_objects.each do |quote|
        expect(quote.quote).to be_a String
        expect(quote.author).to be_a String
        expect(quote.categories).to be_an Array
      end
    end
  end
end