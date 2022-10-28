require 'rails_helper'

RSpec.describe QuoteFacade do
  describe '#get_quotes_info(searched_string)' do
    it 'returns an array of quotes' do
      searched_string = "I am"
      array_of_quotes = QuoteFacade.get_quotes_info(searched_string)
      expect(array_of_quotes).to be_a Array
      expect(array_of_quotes.size).to eq(10)
      expect(array_of_quotes.first.class).to be(Quote)
      expect(array_of_quotes).to all( be_a(Quote) )
    end
  end
end
