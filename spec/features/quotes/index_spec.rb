require 'rails_helper'

RSpec.describe 'Quote Index Page' do
  it 'displays the total number returned by the search' do
    visit root_path

    fill_in :q, with: 'shadows'

    click_on 'Search for quotes'

    expect(current_path).to eq(quotes_path)
    expect(page).to have_content('Total Count: 6')
  end

  xit 'displays 10 quotes that match the search' do
    visit root_path

    fill_in :q, with: 'shadows'

    click_on 'Search for quotes'
  end
end
