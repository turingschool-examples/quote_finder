require 'rails_helper'

RSpec.describe 'quotes index' do
  describe 'as a visitor' do
    describe 'when I search for a keyword from the landing page' do
      it 'takes me to a new page' do
        visit '/'

        fill_in :query, with: "find"

        click_on 'Search for Quotes'

        expect(current_path).to eq('/quotes')
      end

      it 'gives the number of search results' do
        visit '/'

        fill_in :query, with: "find"
        click_button 'Search for Quotes'
        within '#total_results' do

          expect(page).to have_content(51)
        end
      end

      it 'gives the keyword' do
        visit '/'

        fill_in :query, with: "find"
        click_button 'Search for Quotes'
        within '#keyword' do

          expect(page).to have_content('find')
        end
      end

      it 'list of 10 quotes' do
        visit '/'

        fill_in :query, with: "find"
        click_button 'Search for Quotes'

        within '#quotes' do

          expect(page).to have_content('find')
        end
      end
    end
  end
end