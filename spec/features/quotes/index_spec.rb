RSpec.describe 'quotes index' do
  
  it 'displays the top 10 quotes for a search' do
    visit root_path

    fill_in :keyword, with: "divided house"

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
    save_and_open_page
    expect(page).to have_content("Author:"), count: 10
    expect(page).to have_content("Quote:"), count: 10
    expect(page).to have_content("Categories:"), count: 10
  end
end