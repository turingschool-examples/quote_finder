require 'rails_helper'

RSpec.describe 'Returning Quotes' do
  describe "happy path" do
    before(:each) do
      visit root_path
      fill_in :keyword, with: 'I am'
      click_on "Search for Quotes"
    end
    it "displays the total number of quotes" do
      quote_count = QuotesFacade.searched_quotes("I am").count
      expect(page).to have_content("Total Matching Quotes: #{quote_count}")
    end

    it "displays a list of the top ten quotes" do

    end

    it "has information on each quote" do

    end
  end

  describe "sad paths" do

    xit "if there are no tags associated with a quote, it does not display the tag category" do
      tagless_body = {
        "_id": "8KhiOIoj_W",
        "content": "A house divided against itself cannot stand.",
        "author": "Abraham Lincoln",
        "tags": "[]",
        "authorId": "8k75S1ntV9GW",
        "authorSlug": "abraham-lincoln",
        "length": 44,
        "dateAdded": "2020-12-08",
        "dateModified": "2020-12-08"
      }
      # stub_request(:get, "https://api.quotable.io/search/quotes?query=divided house").to_return(status: 200, body: tagless_body)

      visit root_path
      fill_in :keyword, with: 'divided house'
      click_on "Search for Quotes"

      expect(page).to_not have_content("Tags")
    end
  end
end
