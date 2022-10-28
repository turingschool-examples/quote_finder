require 'rails_helper'

RSpec.describe Quote do
  it 'is a Quote with attributes' do
    data = {
      :_id=>"wQNfb7IAqrk",
      :content=>"There is no way to happiness, happiness is the way.",
      :author=>"Thích Nhất Hạnh",
      :tags=>["famous-quotes"]
    }
#     {
# "_id": "wQNfb7IAqrk",
# "content": "There is no way to happiness, happiness is the way.",
# "author": "Thích Nhất Hạnh",
# "tags": [
# "famous-quotes"
# ],
# "authorId": "N0pHADD097gY",
# "authorSlug": "thich-nhat-hanh",
# "length": 51,
# "dateAdded": "2020-03-07",
# "dateModified": "2020-03-07"
# }
    quote = Quote.new(data)

    expect(quote.id).to eq('wQNfb7IAqrk')
    expect(quote.content).to eq('There is no way to happiness, happiness is the way.')
    expect(quote.author).to eq('Thích Nhất Hạnh')
    expect(quote.tags).to eq('famous-quotes')
  end
end
