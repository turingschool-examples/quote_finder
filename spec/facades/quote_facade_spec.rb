require 'rails_helper'

RSpec.describe QuoteFacade do
  xit 'returns Quote data' do
    query = QuoteFacade.new
    results = query.quote_search('shadows')

    expect(results).to be_a(Array)
  end

  it 'returns total number of hits' do
    count = QuoteFacade.total_count('shadows')
    expect(count).to eq(6)
  end
end
