require 'rails_helper'

RSpec.describe 'Landing Page' do
  it "can fill in form with a keyword, hit submit and redirect to quotes index" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
  end

  it "will show the total number of results for the search keyword entered AND the keyword searched" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
    expect(page).to have_content("Results Total for 'I am': 151")
  end

  it "will show the top-10 quotes for this particular seach" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
    expect(page).to have_content("Top 10 Quotes")
    expect(page).to have_content("If I am not for myself")
    expect(page).to have_content("I am not bothered by the fact that I am unknown")
    expect(page).to have_content("I can, therefore I am")
    expect(page).to have_content(" think and that is all that I am")
    expect(page).to have_content("I care not so much what I am")
    expect(page).to have_content("Mind is everything: muscle, pieces of rubber")
    expect(page).to have_content("I am not bound to win")
    expect(page).to have_content("When I let go of what I am")
    expect(page).to have_content("I have no special talent")
    expect(page).to have_content("All that I am, or hope to be")
    expect(page).to_not have_content("Sometimes I am happy and sometimes not")
  end

  it "will return the quotes author AND any categories (tags) associated with the quote" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
    expect(page).to have_content("Rabbi Hillel")
    expect(page).to have_content("famous-quotes")
    expect(page).to have_content("wisdom")
    expect(page).to have_content("Abraham Lincoln")
    expect(page).to have_content("history")
    expect(page).to have_content("truth")
    expect(page).to_not have_content("Yoko Ono")
  end
end
