require 'rails_helper'

RSpec.describe Quote do
  it 'has attributes' do
    attributes = {
      author: 'Abraham Lincoln',
      tags: 'famous-quotes'
    }

    quote = Quote.new(attributes)

    expect(quote.author).to eq('Abraham Lincoln')
    expect(quote.category).to eq('famous-quotes')
  end
end
