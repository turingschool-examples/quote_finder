require 'rails_helper'

RSpec.describe 'Quotes Service' do
  it 'can connect and return a response' do
    response = QuotesService.get_quotes('superman')

    expect(response).to be_a Hash
    expect(response[:totalCount]).to be_a Integer
    expect(response[:results]).to be_a Array
    expect(response[:results].length).to be < 10

    results = response[:results]
    expect(results[0][:content]).to be_a String
    expect(results[0][:author]).to be_a String
    expect(results[0][:tags]).to be_a Array
  end
end