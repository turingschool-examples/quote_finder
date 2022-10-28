require 'rails_helper'

RSpec.describe 'Quote Search' do
  it 'retrieves top 10 quotes by keyword search' do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
    expect(page).to have_content('Search results for: I am')
    within '#quote-0' do
      expect(page).to have_content('If I am not for myself, who will be for me? If I am not for others, what am I? And if not now, when?')
      expect(page).to have_content('Author: Rabbi Hillel')
      expect(page).to have_content('Category(ies): famous-quotes and wisdom')
    end
    within '#quote-1' do
      expect(page).to have_content('I am not bothered by the fact that I am unknown. I am bothered when I do not know others.')
      expect(page).to have_content('Author: Confucius')
      expect(page).to have_content('Category(ies): wisdom')
    end
    within '#quote-2' do
      expect(page).to have_content('I can, therefore I am.')
      expect(page).to have_content('Author: Simone Weil')
      expect(page).to have_content('Category(ies): inspirational')
    end
  end
end
