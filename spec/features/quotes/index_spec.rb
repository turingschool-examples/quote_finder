require 'rails_helper'

RSpec.describe 'Quote Index Page' do
  it 'displays the total number returned by the search' do
    visit root_path

    fill_in :keyword, with: 'shadows'

    click_on 'Search for Quotes'

    expect(current_path).to eq(quotes_path)
    expect(page).to have_content('Total Count: 6')
  end

  it 'displays 10 quotes that match the search' do
    visit root_path

    fill_in :keyword, with: 'shadows'

    click_on 'Search for Quotes'
  end
end
