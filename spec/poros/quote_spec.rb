require 'rails_helper'

RSpec.describe Quote do
  before :each do
    quote_data = JSON.parse(file_fixture("single_quote_response.json").read, symbolize_names: true)
    @quote = Quote.new(quote_data)
  end

  it 'exists and has attributes' do
    expect(@quote).to be_instance_of(Quote)
    expect(@quote.id).to eq("CPhGOJeapNYZ")
    expect(@quote.author).to eq("Gail Sheehy")
    expect(@quote.content).to eq("To be tested is good. The challenged life may be the best therapist.")
    expect(@quote.tags).to eq(["famous-quotes"])
  end
end