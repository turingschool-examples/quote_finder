require 'rails_helper'

describe "Quotes API" do
  it 'sends a list of all quotes to #index' do
    id = create(:merchant).id
    items = create_list(:item, 5, merchant_id: id)

    get '/quotes'

    expect(response).to be_successful

    quote_response = JSON.parse(response.body, symbolize_names: true)
    quote_results = quote_response#[:data].first[:attributes]
    
    expect(quote_results[:totalCount]).to eq(Integer)
    expect(quote_results[:results]).to be_an(Array)
    expect(quote_results[:results][:author]).to be_a(String)

  end
end