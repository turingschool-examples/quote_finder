require 'rails_helper'

RSpec.describe 'Landing Page' do
  it "can fill in form with a keyword, hit submit and redirect to quotes index" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
  end

  it 'redirects to /quotes after searching keyword and returns the total number of quotes found, the search param and the top 10 quotes from results with the author/category' do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"
    expect(page).to have_content("165 quotes found")#total count of quotes found
    expect(page).to have_content("I am") #showing query search
    expect(page).to have_content("Top 10")#might need to rewrite better/somewhow include or count quote objects
    expect(page).to have_content("Rabbi Hillel") #rigid test, I have to figure out a way to be more flexible with the results
    expect(page).to have_content(["famous-quotes","wisdom"]) #might need to just test for one
  end
end
