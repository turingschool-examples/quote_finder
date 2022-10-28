require 'rails_helper'

RSpec.describe 'Quote PORO' do
  it 'creates a quote object' do

    @quote_data = QuotesService.searched_quotes("hands").first

    @quote = Quote.new(@quote_data)

    expect(@quote).to be_a Quote
    expect(@quote.author).to eq('The Godfather')
    expect(@quote.tags).to eq("715")
    expect(@quote.content).to eq("175")
  end
end