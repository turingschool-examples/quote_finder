require 'rails_helper'

RSpec.describe 'Quotes Results Page' do
  describe 'as a user ' do
#     As a visitor
# When I visit the landing page '/'
# And fill in the form with a keyword
# And hit 'Search for Quotes'
# I am taken to '/quotes'
# Where I see the TOTAL number of quotes that were found for that keyword
# As well as the keyword that's being used for the search
# As well as a list of the top 10 quotes that were found

# For each quote listed, I should see:
# - The quote's author
# - The quote's category(ies) (i.e. tags)
    it 'when I search a keyword it returns a list of top ten results', :vcr do
      visit root_path

      fill_in :query, with: "I am"
      click_on "Search for Quotes"

      expect(current_path).to eq(quotes_path)

      expect(page).to have_content("Quotes Found:")
      expect(page).to have_content("results found: 20")
      expect(page).to have_content("keyword: I am")
      expect(page).to have_content("ten best matches:")

      within("#best-matches") do
        expect(page).to have_content("Rabbi Hillel")
        expect(page).to have_content("famous-quotes")
        expect(page).to have_content("Simone Weil")
        expect(page).to have_content("history")
        expect(page).to have_content("wisdom")
      end
    end
  end
end
