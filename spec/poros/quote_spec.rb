require 'rails_helper'

RSpec.describe Quote do
  it 'exists' do
    quote_data = {
      "_id": "OHNMF1vCnPFE",
      "content": "If I am not for myself, who will be for me? If I am not for others, what am I? And if not now, when?",
      "author": "Rabbi Hillel",
      "tags": [
          "famous-quotes",
          "wisdom"
      ],
      "authorId": "cII2_MfYV9sI",
      "authorSlug": "rabbi-hillel",
      "length": 100,
      "dateAdded": "2019-01-08",
      "dateModified": "2022-07-04"
  }

    quote = Quote.new(quote_data)

    expect(quote).to be_a Quote
    expect(quote.id).to eq('OHNMF1vCnPFE')
    expect(quote.content).to eq('If I am not for myself, who will be for me? If I am not for others, what am I? And if not now, when?')
    expect(quote.author).to eq('Rabbi Hillel')
    expect(quote.categories).to eq(["famous-quotes", "wisdom"])
  end
end