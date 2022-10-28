require 'rails_helper'

RSpec.describe Quote do
  before :each do 
    @quote = QuotesFacade.search_by_keyword("I am").first
  end

  it 'exists' do
    expect(@quote).to be_a(Quote)
  end

  it 'has a quote' do
    expect(@quote.quote).to eq("If I am not for myself, who will be for me? If I am not for others, what am I? And if not now, when?")
  end

  it 'has an author' do
    expect(@quote.author).to eq("Rabbi Hillel")
  end

  it 'has categories' do
    expect(@quote.categories).to be_an(Array)
    expect(@quote.categories).to eq(["famous-quotes", "wisdom"])
  end
end