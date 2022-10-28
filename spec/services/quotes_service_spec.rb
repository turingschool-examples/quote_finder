require 'rails_helper'

RSpec.describe QuotesService do
  xit 'can return a list of quotes with a given keyword' do
    query = "test"
    response = QuotesService.search_quotes(query)

    expect(response).to be_a(Hash)
    expect(response).to have_key(:count)
    expect(response[:count]).to eq(10)
    expect(response).to have_key(:totalCount)
    expect(response).to have_key(:page)
    expect(response).to have_key(:totalPages)
    expect(response).to have_key(:lastItemIndex)
    expect(response).to have_key(:results)

    expect(response[:results]).to be_an(Array)

    response[:results].each do |quote_data|
      expect(quote_data).to have_key(:_id)
      expect(quote_data).to have_key(:content)
      expect(quote_data).to have_key(:author)
      expect(quote_data).to have_key(:tags)
      expect(quote_data[:tags]).to be_an(Array)
      expect(quote_data).to have_key(:authorId)
    end
  end

end