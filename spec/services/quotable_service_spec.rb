require 'rails_helper'

RSpec.describe 'Quotable Service' do
  it 'search response is in expected format' do
    response = QuotableService.search("I am")

    expect(response).to be_a(Hash)
    expect(response[:count]).to be_a(Integer)
    expect(response[:results]).to be_a(Array)
    expect(response[:results].first[:_id]).to be_a(String)
    expect(response[:results].first[:content]).to be_a(String)
    expect(response[:results].first[:author]).to be_a(String)
    expect(response[:results].first[:tags]).to be_a(Array)
    expect(response[:results].first[:tags].first).to be_a(String)
    expect(response[:results].first[:tags].second).to be_a(String)
  end
end