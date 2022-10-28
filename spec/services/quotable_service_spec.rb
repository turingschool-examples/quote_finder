require 'rails_helper'

RSpec.describe 'Quotable Service' do
  it 'search response is in expected format' do
    response = QuotableService.search("I am")

    expect(response).to be_a(Hash)
    expect(response[:results]).to be_a(Array)
  end
end