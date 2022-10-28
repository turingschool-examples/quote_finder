# frozen_string_literal: true

require 'rails_helper'

RSpec.describe QuotesService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.quotes(:keyword)' do
      it 'returns an index of all Quotes related to keyword' do
        response = QuotesService.quotes('life happiness')
        expect(response[:results]).to be_an Array
        response[:results].each do |quote|
          quote_attributes(quote)
        end
      end
    end
  end
end

def quote_attributes(quote)
  expect(quote[:content]).to be_an String
  expect(quote[:author]).to be_an String
  expect(quote[:tags]).to be_an Array
end
