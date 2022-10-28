require 'rails_helper'

RSpec.describe 'Quotes Poro' do
  it 'exists and has attributes' do
    data = {
      totalCount: 1,
      results: [
        _id: "Q2PbsPMcCJ",
        content: "A quote String",
        author: "Christopher Reeve",
        tags: [
          'wisdom'
        ]
      ]
    }
    quote = Quote.new(data)

    expect(quote).to be_a Quote
    expect(quote.id).to eq("Q2PbsPMcCJ")
    expect(quote.content).to eq('A quote String')
    expect(quote.author).to eq('Christopher Reeve')
    expect(quote.tags).to be_a Array
    expect(quote.tags[0]).to eq('wisdom')
  end
end