require 'rails_helper'

RSpec.describe QuoteService do
  context 'class methods' do
    it 'returns parks data for a state' do
      search = QuoteService.get_quotes('I am')

      expect(search).to be_a Hash
      expect(search[:results]).to be_an Array

      expect(search[:results][0]).to have_key :_id
      expect(search[:results][0][:_id]).to be_a String

      expect(search[:results][0]).to have_key :content
      expect(search[:results][0][:content]).to be_a String

      expect(search[:results][0]).to have_key :author
      expect(search[:results][0][:author]).to be_a String

      expect(search[:results][0]).to have_key :tags
      expect(search[:results][0][:tags]).to be_an Array
    end
  end
end