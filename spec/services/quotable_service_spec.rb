require 'rails_helper'

RSpec.describe 'Quotable Service' do
  describe 'class methods' do
    describe '.top_results' do
      it 'should return a json' do
        response = QuotableService.top_results('History')

        expect(response).to have_key(:totalCount)
        expect(response).to have_key(:results)
        expect(response[:results].count).to eq 10

        response[:results].each do |result|
          expect(result).to have_key(:author)
          expect(result[:author]).to be_a String

          expect(result).to have_key(:content)
          expect(result[:content]).to be_a String

          expect(result).to have_key(:tags)
          expect(result[:tags]).to be_a Array
            result[:tags].each do |tag|
              expect(tag).to be_a String
            end
        end

      end
    end

  end

end