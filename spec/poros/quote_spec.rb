require 'rails_helper'

RSpec.describe Quote do
  it 'has content, an author, and category tags' do
    quote_hash = {
      content: "Something",
      author: "Something else",
      tags: [
        "stuff",
        "more-stuff"
      ]

    }

    quote = Quote.new(quote_hash)

    expect(quote.content).to be_a String
    expect(quote.author).to be_a String
    expect(quote.tags).to be_an Array
    expect(quote.tags.first).to eq("stuff")
  end
end