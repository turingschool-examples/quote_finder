require 'rails_helper'

RSpec.describe 'Landing Page' do
  it "can fill in form with a keyword, hit submit and redirect to quotes index" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
  end

  describe "I am taken to '/quotes' where I see the TOTAL number of quotes that were found for that keyword" do
    describe "As well as the keyword that's being used for the search" do
      it "As well as a list of the top 10 quotes that were found" do
        visit root_path

        fill_in :keyword, with: 'Love'

        click_on "Search for Quotes"

        expect(current_path).to eq("/quotes")

        expect(page).to have_content('Quotes Matching Search For:')
      end
    end
  end
end
