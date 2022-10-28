require 'rails_helper'

RSpec.describe Quote do
  it 'exists' do
    attrs = {:_id=>"OHNMF1vCnPFE",
      :content=>
       "It is what it is til it aint.",
      :author=>"Mac Miller",
      :tags=>["wisdom", "love"],
      :authorId=>"cII2_MfYV9sI",
      :authorSlug=>"rabbi-hillel",
      :length=>100,
      :dateAdded=>"2019-01-08",
      :dateModified=>"2022-07-04"}

    quote = Quote.new(attrs)

    expect(quote).to be_a Quote
    expect(quote.id).to eq("OHNMF1vCnPFE")
    expect(quote.author).to eq('Mac Miller')
    expect(quote.quote).to eq('It is what it is til it aint.')
    expect(quote.categories).to eq(["wisdom", "love"])
  end
end

