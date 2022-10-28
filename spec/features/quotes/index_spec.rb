RSpec.describe 'quotes index' do
  
  it 'displays the top 10 quotes for a search' do
    visit root_path

    fill_in :keyword, with: "divided house"

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
    expect(page).to have_content("Author:", count: 10)
    expect(page).to have_content("Quote:", count: 10)
    expect(page).to have_content("Categories:", count: 10)
  end

  it 'works when nothing matches' do
    visit root_path

    fill_in :keyword, with: "Aleisha"

    click_on "Search for Quotes"
 
    expect(current_path).to eq("/quotes")
    # expect(page).to have_content("Author:"), count: 10
    # expect(page).to have_content("Quote:"), count: 10
    # expect(page).to have_content("Categories:"), count: 10
  end

  it 'works when there is no search' do
    visit root_path

    fill_in :keyword, with: ""

    click_on "Search for Quotes"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Please enter a search term")
    # expect(page).to have_content("Author:"), count: 10
    # expect(page).to have_content("Quote:"), count: 10
    # expect(page).to have_content("Categories:"), count: 10
  end
end