require 'rails_helper'

RSpec.describe 'QuoteFacade' do
  it 'makes a call and returns an array of parks in a state' do
    quotes = QuoteFacade.get_quotes("Sagan")

    expect(quotes).to be_an(Array)
    expect(quotes).to be_all(Quote)
    expect(quotes.length).to be <= 10
  end
end
