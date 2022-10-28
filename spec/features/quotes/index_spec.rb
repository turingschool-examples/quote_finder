require 'rails_helper'

RSpec.describe 'quotes index' do 
  it 'will display total number, keyword used, and list of top 10 quotes from search' do 
    # As a visitor
    # When I visit the landing page '/'
    visit '/'
    # And fill in the form with a keyword 
    fill_in :query, with: 'extreme love'
    # And hit 'Search for Quotes'
    click_on 'Search for Quotes'
    # I am taken to '/quotes'
    expect(current_path).to eq('/quotes')
    # Where I see the TOTAL number of quotes that were found for that keyword
    expect(page).to have_content("Total Count: #{total}")
    # As well as the keyword that's being used for the search
    expect(page).to have_content("Keywords: extreme love")
  end

  xit 'will show the top 10 quotes, the author, and the categories of the quote' do
    # As well as a list of the top 10 quotes that were found
    expect(page).to have_content("Top 10 quotes")
  end

end