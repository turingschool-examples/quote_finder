require 'rails_helper'

RSpec.describe 'Quote index' do 
  it 'returns the results for a search' do 
    visit root_path
    fill_in :query, with: 'hemingway'
    click_on 'Search for Quotes'
    expect(page).to have_content('Total quotes: ')
    expect(page).to have_content('Search Results: hemingway')

    within '#quote-0' do 
      expect(page).to have_content('Author: ')
      expect(page).to have_content('Category')
    end

    within '#quote-1' do 
      expect(page).to have_content('Author: ')
      expect(page).to have_content('Category')
    end
    
  end
end