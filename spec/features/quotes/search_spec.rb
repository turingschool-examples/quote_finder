require 'rails_helper'

RSpec.describe 'Quotes Search' do
  # As a visitor
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

  describe 'User story 1', vcr: { record: :new_episodes } do
    before :each do
      @quotes = QuotableFacade.quote_search("leaderships")
    end
    it 'I search for a keyword on the landing page I am taken to /quotes where I see total number of quotes matching my search' do
      
    end

    it 'As well as the keyword thats being used for the search' do

    end

    it 'As well as a list of the top 10 quotes that were found including qoute author and categories' do

    end
  end 
  
end