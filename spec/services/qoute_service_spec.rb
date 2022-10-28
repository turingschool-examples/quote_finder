require 'rails_helper'

RSpec.describe QuoteService do
  describe 'api endpoint' do
    it 'can get the first 10 quotes for a keyword entered' do
      quote_data = QuoteService.get_10_quotes_by_keyword("love")

      expect(parks_data).to be_a(Hash)
      expect(parks_data).to have_key :totalCount
      expect(parks_data[:totalCount]).to be_an(Integer)

      expect(parks_data).to have_key :results
      expect(parks_data[:results]).to be_an(Array)

      expect(parks_data[:results][0]).to have_key :author
      expect(parks_data[:results][0][:author]).to be_a(String)

      expect(parks_data[:results][0]).to have_key :content
      expect(parks_data[:results][0][:content]).to be_a(String)

      expect(parks_data[:results][0]).to have_key :tags
      expect(parks_data[:results][0][:tags]).to be_an(Array)
      expect(parks_data[:results][0][:tags][0]).to be_a(String)
    end
  end
end