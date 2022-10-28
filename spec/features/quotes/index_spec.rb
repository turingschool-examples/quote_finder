require 'rails_helper'

RSpec.describe '/quotes' do
  it 'displays search results' do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"
  end
end