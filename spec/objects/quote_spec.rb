# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Quote, :vcr, type: :object do
  describe 'Instantiation' do
    it 'can be instantiated' do
      response = QuotesService.quotes('life happiness')
      quote = response[:results][0]
      expect(Quote.new(quote)).to be_an_instance_of described_class
    end
  end

  describe 'Attributes' do
    it 'can return required attributes' do
      response = QuotesService.quotes('life happiness')
      quote = response[:results][0]
      quote_attributes_obj(Quote.new(quote))
    end
  end
end

def quote_attributes_obj(quote)
  expect(quote.content).to be_an String
  expect(quote.author).to be_an String
  expect(quote.tags).to be_an Array
end
