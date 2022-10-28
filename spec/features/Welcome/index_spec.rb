require 'rails_helper'

RSpec.describe 'Landing Page' do
  it "can fill in form with a keyword, hit submit and redirect to quotes index" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
  end

  it "I see total number of quotes that were found for that keyword" do

    output = {
    "count": 1,
    "results": [
        {
            "_id": "JIk3cbQ8s",
            "author": "Michael Jordan",
            "content": "I've missed more than 9000 shots in my career. I've lost almost 300 games. 26 times, I've been trusted to take the game winning shot and missed. I've failed over and over and over again in my life. And that is why I succeed.",
            "tags": [
                "sports",
                "competition",
                "famous-quotes"
            ],
            "authorSlug": "michael-jordan",
            "length": 224,
            "dateAdded": "2022-07-06",
            "dateModified": "2022-07-08"
        }]}

    allow(QuotableService).to receive(:search).and_return(output)
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"
save_and_open_page
    expect(page).to have_content "Number of quotes found:"
    expect(page).to have_content "Search keyword(s): I am"


  end


end
