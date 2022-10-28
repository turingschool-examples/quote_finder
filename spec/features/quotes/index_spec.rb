require 'rails_helper'

RSpec.describe 'Quotes Index Page' do

  it "shows a list of all quotes for keyword" do
    visit root_path

    fill_in :keyword, with: 'Sagan'
    click_on "Search for Quotes"
    expect(current_path).to eq("/quotes")
    expect(page).to have_content 'Quotes for Sagan'
    expect(page).to have_content 'Total Number of Quotes: 1'
    expect(page).to have_content 'Author: Carl Sagan'
    expect(page).to have_content 'Categories: famous-quotes'
    expect(page).to have_content 'Imagination will often carry us to worlds that never were. But without it we go nowhere.'

    #within block for number of quotes 10?
    #expect(page).to_not have_content
  end
end