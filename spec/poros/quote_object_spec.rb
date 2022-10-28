require 'rails_helper'

RSpec.describe QuoteObject do
  describe 'has attributes' do
    it 'test attributes' do
      data = {
        "count": 20,
        "totalCount": 151,
        "page": 1,
        "totalPages": 8,
        "lastItemIndex": 20,
        "results":
            {
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
        }

      quote = QuoteObject.new(data[:results])
      
      expect(quote.quote).to eq(data[:results][:content])
      expect(quote.author).to eq(data[:results][:author])
      expect(quote.categories).to eq(data[:results][:tags])
    end
  end
end