require 'rails_helper'

RSpec.describe Quotes do 
  it 'instantiates' do
    @quotes_array = QuotableFacade.quote_search("I am")

    @quotes_array.each do |quote|
      expect(quote).to be_a(Quotes)
    end
  end

  it 'has attributes' do
    @quotes_array = QuotableFacade.quote_search("I am")
    quote1 = @quotes_array.first

    expect(quote1.id).to be_a(String)
    expect(quote1.author).to be_a(String)
    expect(quote1.content).to be_a(String)
    expect(quote1.tags).to be_a(Array)
    expect(quote1.tags.first).to be_a(String)

  end
end