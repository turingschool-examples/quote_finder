require "rails_helper.rb"

RSpec.describe "Quote Index Page", type: :feature do
  describe "As a As a visitor" do
    describe "When I visit the landing page '/' and fill in the form with a keyword and hit 'Search for Quotes'" do
      before :each do
        @quotes = QuoteFacade.quotes_by_keyword("love")
        visit root_path
        fill_in :keyword, with: 'love'
        click_on "Search for Quotes"
      end

      it "I am taken to '/quotes' Where I see the TOTAL number of quotes that were found for that keyword as well as the keyword that's being used for the search" do
        
        expect(page).to have_content(@quotes[:total_quotes])
        expect(page).to have_content("Love")

      end

      it "As well as a list of the top 10 quotes that were found, For each quote listed, I should see: The quote's author, and The quote's category(ies)" do
        
        expect(page).to have_content("Top 10 Quotes")
        
        within("#top-10-quotes") do
          expect(page).to have_content(@quotes[:quotes][0].author)
          expect(page).to have_content(@quotes[:quotes][0].content)
          expect(page).to have_content(@quotes[:quotes][0].categories[0])
        end
      end

      it "If I search for a keyword that has no quotes I see the results page listing 0 total results" do
        visit root_path
        fill_in :keyword, with: 'Aleisha'
        click_on "Search for Quotes"

        expect(page).to have_content("Total number of quotes found: 0")
        expect(page).to have_content("Aleisha")
      end
    end
  end
end