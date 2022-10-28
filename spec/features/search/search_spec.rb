require 'rails_helper'

RSpec.describe 'search results page', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit the welcome page' do

      it 'I can fill in a word, click search, I am taken to the /quotes page and I see the total number of quotes that were found as well as the keyword that is being used for the search.' do

        visit root_path
        fill_in :keyword, with: 'I am'
        click_on "Search for Quotes"
        expect(page).to have_content('Total Number of Quotes: 151')
        expect(page).to have_content('Keyword Used for this Search: I am')
      end

      it 'I also see a list of the top 10 quotes that were found. Under each quote I see the author & category(ies) or tags' do
        visit root_path
        fill_in :keyword, with: 'I am'
        click_on "Search for Quotes"

        expect(page).to have_content('Top 10 Quotes Found')
        within("#quote_#{0}") do 
          expect(page).to have_content("Rabbi Hillel")
          expect(page).to have_content("If I am not for myself, who will be for me? If I am not for others, what am I? And if not now, when?")
          expect(page).to have_content("famous-quotes")
          expect(page).to have_content("wisdom")
        end
      end

      xit 'If there are less than 10 quotes found for a particular search, then only return the quotes that were found.' do
        visit root_path
        fill_in :keyword, with: 'Pizza'
        click_on "Search for Quotes"

        expect(page).to have_content('Add a Pet to this Application') #expect one quote
      end

      xit 'If the quote has no tags associated with it, do not list any categories for that quote.' do
        visit root_path
        fill_in :keyword, with: 'Pizza'
        click_on "Search for Quotes"

        expect(page).to have_content('Add a Pet to this Application') #not list any categories
      end
    end
  end
end
