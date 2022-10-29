require 'rails_helper'

RSpec.describe Quote do
  describe 'initialization' do
    before :each do
      @quote_data = {:_id=>"dwyaOypDiT0t",
        :content=>"Love isn't something you find. Love is something that finds you.",
        :author=>"Loretta Young",
        :tags=>["famous-quotes"],
        :authorId=>"lPJTazTFfCqx",
        :authorSlug=>"loretta-young",
        :length=>64,
        :dateAdded=>"2019-08-08",
        :dateModified=>"2019-08-08"}
    end
    it 'is a Quote object' do
      expect(Quote.new(@quote_data)).to be_a(Quote)
    end

    it 'has attributes' do

      quote = Quote.new(@quote_data)

      expect(quote.content).to eq("Love isn't something you find. Love is something that finds you.")

      expect(quote.tags).to eq(["famous-quotes"])
      expect(quote.author).to eq("Loretta Young")

    end

    context 'if there are no tags' do
      it 'has an empty array for categories' do
        @quote_data[:tags] = []

        quote = Quote.new(@quote_data)
        expect(quote.tags).to eq([])
      end
    end
  end
end