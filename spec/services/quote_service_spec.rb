require 'rails_helper'

describe QuoteService do
    it "returns quote data for keyword" do
        search = QuoteService.quote_search("Sagan")
        expect(search).to be_a Hash
        expect(search[:totalCount]).to be_a(Integer)
        expect(search[:results]).to be_an Array

        quote_data = search[:results].first

        expect(quote_data).to have_key :author
        expect(quote_data[:author]).to be_a(String)

        expect(quote_data).to have_key :tags
        expect(quote_data[:tags]).to be_an Array
        expect(quote_data[:tags].first).to be_a(String)

        expect(quote_data).to have_key :content
        expect(quote_data[:content]).to be_a(String)
    end
end