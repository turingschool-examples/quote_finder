# frozen_string_literal: true

require 'rails_helper'

RSpec.describe QuotesFacade, type: :facade do
  describe 'Class Methods', :vcr do
    describe '.create_quotes' do
      it 'creates an array of Merchant objects' do
        quotes = QuotesFacade.create_quotes('life happiness')
        expect(quotes).to be_an Array
        quotes.each do |quote|
          quote_attributes_obj(quote)
        end
      end
    end
  end
end

def quote_attributes_obj(quote)
  expect(quote.content).to be_an String
  expect(quote.author).to be_an String
  expect(quote.tags).to be_an Array
end
