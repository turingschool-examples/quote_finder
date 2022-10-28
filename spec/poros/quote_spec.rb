require 'rails_helper'

RSpec.describe Quote do
  let!(:quote_hash) { {
    content: "Something",
    author: "Something else",
    tags: [
      "stuff",
      "more-stuff"
    ]

  } }
  let!(:quote) { Quote.new(quote_hash) }

  it 'has content, an author, and category tags' do
    expect(quote.content).to be_a String
    expect(quote.author).to be_a String
  end

  describe 'tags' do
    it 'concatenates tags into a string' do
      expect(quote.tags).to eq('stuff, more-stuff')
    end

    describe 'when no tags are present' do
      it 'lets the user know' do
        quote_hash[:tags] = nil
        quote = Quote.new(quote_hash)
        expect(quote.tags).to eq 'no tags present'

        quote_hash[:tags] = []
        quote = Quote.new(quote_hash)
        expect(quote.tags).to eq 'no tags present'
      end
    end
  end
end