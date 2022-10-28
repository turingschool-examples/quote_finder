require 'rails_helper'

RSpec.describe Quote do
  it 'exists and has attributes' do
    fake_data = {

      author: "Arthur C. Clarke",
      tags: ["technology"]


    }
    quote = Quote.new(fake_data)

    expect(quote).to be_a(Quote)
    expect(quote.author).to eq("Arthur C. Clarke")
    expect(quote.categories).to eq("technology")

  end
end
