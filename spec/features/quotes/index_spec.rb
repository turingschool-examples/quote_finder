require 'rails_helper'

RSpec.describe 'Quotes Index Page' do
  it 'lists keyword and total count' do
    visit '/'

    fill_in :keyword, with: 'mark twain'
    click_button 'Search for Quotes'

    expect(current_path).to eq('/quotes')
    expect(page).to have_content('Quotes matching keyword: mark twain')
    expect(page).to have_content('Total Results: 21')
  end
end