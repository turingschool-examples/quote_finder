require 'rails_helper'

RSpec.describe 'Returning Quotes' do
  before(:each) do
    visit root_path
    fill_in :keyword, with: 'I am'
    click_on "Search for Quotes"
  end
  it "displays the total number of quotes" do
    quote_count = QuotesFacade.searched_quotes("I am").count
    expect(page).to have_content("Total Matching Quotes: #{quote_count}")
  end

  it "displays a list of the top ten quotes" do

  end

  it "has information on each quote" do

  end

end
