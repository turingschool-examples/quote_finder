require 'rails_helper'

RSpec.describe QuotesService do
  it 'can return a list of quotes with a given keyword' do
    query = "test"
    response = QuotesService.get_quotes(query)

    expect(response).to be_a(Hash)
    expect(response).to have_keys([:count, :totalCount, :page, :totalPages, :lastItemIndex, :results])
  end
end