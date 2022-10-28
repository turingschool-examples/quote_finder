require 'rails_helper'

RSpec.describe Quote do
  it 'has info about a quote' do
    data = {
      _id:"xH7XN__m5y",
      content:"We can only learn to love by loving.",
      author:"Iris Murdoch",
      tags:[
        "famous-quotes"
      ],
      authorId:"v2Jk1rHcsGne",
      authorSlug:"iris-murdoch",
      length:36,
      dateAdded:"2020-01-26",
      dateModified:"2020-01-26"
    }

    quote = Quote.new(data)

    expect(quote.author).to equal("Iris Murdoch")
    expect(quote.content).to equal("We can only learn to love by loving.")
    expect(quote.categories).to eq (["famous-quotes"])
  end
end
