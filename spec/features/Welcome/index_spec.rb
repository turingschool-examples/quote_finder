require 'rails_helper'

RSpec.describe 'Landing Page' do
  it "can fill in form with a keyword, hit submit and redirect to quotes index" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
  end

  it "I see total number of quotes that were found for that keyword" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"
save_and_open_page
    expect(page).to have_content "Number of quotes found:"
    expect(page).to have_content "Search keyword(s): I am"

  end
end
