require 'rails_helper'

    RSpec.describe 'Quote Service' do
      it 'returns Quote API' do
        quotes = QuoteService.get_quotes

        expect(quotes).to be_an(Array)

        quotes.each do |quote|
          expect(quote).to have_key(:id)
          expect(quote[:id]). to be_a String
          expect(quote).to have_key(:author)
          expect(quote[:author]).to be_a String
        end
      end
    end