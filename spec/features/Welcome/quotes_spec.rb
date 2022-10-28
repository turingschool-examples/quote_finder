require 'rails_helper'

RSpec.describe 'Quotes Page' do
  it "shows 0 results if no quotes were found" do
    visit root_path
    fill_in :keyword, with: 'jake'
    click_on "Search for Quotes"
    expect(page).to have_content('0 total results')
  end

  it "shows keyword used for search" do
    visit root_path
    fill_in :keyword, with: 'I am'
    click_on "Search for Quotes"
    expect(page).to have_content('for "I am"')
  end

  it "shows quotes and attributes" do
    visit root_path
    fill_in :keyword, with: 'I am'
    click_on "Search for Quotes"
    expect(page).to have_content('If I am not for myself, who will be for me?')
    expect(page).to have_content('by: Rabbi Hillel')
    expect(page).to have_content('tags: ["famous-quotes", "wisdom"]')
  end
end