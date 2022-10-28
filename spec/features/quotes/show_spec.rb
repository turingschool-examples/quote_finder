# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Quotes | Index', :vcr do
  let!(:before) do
    visit root_path
    fill_in :keyword, with: 'life happiness'
    click_on 'Search for Quotes'
  end
  describe 'When I enter a key word, I am redirected to the /quotes index and;' do
    it 'I see the total amount of quotes found' do
      expect(page).to have_content 'Total Quotes Found: 243'
    end

    it 'I see only 10 quotes' do
      quotes = find_all('.quote')
      expect(quotes.count).to eq 10
    end

    it 'I see the correct quote response' do
      within('#id-NZx4vMwOCDxJ') do
        expect(page).to have_content 'There is only one happiness in life, to love and be loved.'
        expect(page).to have_content 'George Sand'
        expect(page).to have_content 'famous-quotes'
      end
    end
  end
end
