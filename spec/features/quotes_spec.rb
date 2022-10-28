require 'rails_helper'

RSpec.describe 'Landing Page' do
  it "can fill in form with a keyword, hit submit and redirect to quotes index" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
  end

  it 'returns quotes that were searched' do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(page).to have_content("20 quotes were found for the search 'I am'")

    within("quote_1") do
      expect(page).to have_content('When I let go of what I am, I become what I might be.')
      expect(page).to have_content('Author: Laozi')
      expect(page).to have_content('Tags: wisdom')
    end
  end
end