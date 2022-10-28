

require "rails_helper"

RSpec.describe Quote do
  it "exists" do
    data = {
        "count": 1,
        "totalCount": 1,
        "page": 1,
        "totalPages": 1,
        "lastItemIndex": null,
        "results": [
            {
                "_id": "r3wAKE9N-Nei",
                "content": "Imagination will often carry us to worlds that never were. But without it we go nowhere.",
                "author": "Carl Sagan",
                "tags": [
                    "famous-quotes"
                ],
                "authorId": "W2oRVCp-mXLC",
                "authorSlug": "carl-sagan",
                "length": 88,
                "dateAdded": "2020-02-07",
                "dateModified": "2020-02-07"
            }
        ]
    }

    quote = Quote.new(data)

    expect(quote).to be_a Quote
    expect(quote.content).to eq("Imagination will often carry us to worlds that never were. But without it we go nowhere.")
    expect(quote.author).to eq("Carl Sagan")
    expect(quote.categories).to eq("famous-quotes")
  end
end