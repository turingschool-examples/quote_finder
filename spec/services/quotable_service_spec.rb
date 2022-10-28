require 'rails_helper'

RSpec.describe QuotableService do
  describe 'service to make api calls to quotable api', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(QuotableService.new).to be_a(QuotableService)
    end

    it 'has successful connection to api' do
      response = QuotableService.quote_search_endpoint("magic")
      require 'pry'; binding.pry
    end
  end
end