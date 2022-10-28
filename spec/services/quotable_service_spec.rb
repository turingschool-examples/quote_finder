require 'rails_helper'

RSpec.describe QuotableService do
  describe 'service to make api calls to quotable api', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(QuotableService.new).to be_a(QuotableService)
    end

    it 'has successful connection to api' do
      response = QuotableService.quote_search_endpoint("magic")
      
      expect(response).to be_a(Hash)
      expect(response[:count]).to be_a(Integer)
      expect(response[:page]).to be_a(Integer)
      expect(response[:results]).to be_a(Array)
      expect(response[:results][0]).to be_a(Hash)
      expect(response[:results][0][:content]).to be_a(String)
      expect(response[:results][0][:author]).to be_a(String)
    end
  end
end