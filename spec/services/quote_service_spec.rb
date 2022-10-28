require 'rails_helper'

describe QuoteService do
  context "class methods" do
    context "#get_quotes_info(searched_string)" do
      it "returns quote data" do
        searched_string = "person"
        search_results = QuoteService.get_quotes_info(searched_string)
        expect(search_results).to be_a Hash

        expect(search_results).to have_key :totalCount
        expect(search_results[:totalCount]).to be_a(Integer)

        expect(search_results).to have_key :results
        expect(search_results[:results]).to be_a(Array)

        expect(search_results[:results].first).to have_key :_id
        expect(search_results[:results].first[:_id]).to be_a(String)

        expect(search_results[:results].first).to have_key :content
        expect(search_results[:results].first[:content]).to be_a(String)

        expect(search_results[:results].first).to have_key :author
        expect(search_results[:results].first[:author]).to be_a(String)

        expect(search_results[:results].first).to have_key :tags
        expect(search_results[:results].first[:tags]).to be_an(Array)
      end
    end
  end
end