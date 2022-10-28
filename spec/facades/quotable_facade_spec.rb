require 'rails_helper'

RSpec.describe 'Quotable Facade' do
  describe 'class methods' do
    describe '.top_results' do
      it 'should return a array of objects' do
        response = QuotableFacade.top_results('History')

        expect(response).to be_a Array
        expect(response).to all( be_a Quote)
        expect(response.count).to eq 10
      end
    end

    describe '.result_count' do
      it 'should return an integer' do
        response = QuotableFacade.result_count('History')

        expect(response).to be_a Integer
      end
    end

  end

end