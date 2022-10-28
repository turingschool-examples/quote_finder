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

    expect(page).to have_content("151 quotes were found for the search 'I am'")

    expect(page).to have_content('If I am not for myself, who will be for me?')
    expect(page).to have_content('Author: Rabbi Hillel')
    expect(page).to have_content('Categories: famous-quotes and wisdom')
  end
end