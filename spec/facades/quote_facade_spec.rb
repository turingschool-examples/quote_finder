require 'rails_helper'

RSpec.describe QuoteFacade do 
  describe 'class methods' do 
    it '#quote_search' do
      results = QuoteFacade.quote_search('hemingway')
      expect(results).to be_a QuoteSearch
      expect(results.quotes).to all(be_a Quote)
    end
  end
end