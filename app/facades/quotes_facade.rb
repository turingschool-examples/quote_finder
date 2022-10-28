# frozen_string_literal: true

class QuotesFacade
  def self.create_quotes(keyword)
    response = QuotesService.quotes(keyword)
    arr = response[:results].map do |quote|
      Quote.new(quote)
    end
    # Want to know if there is a better way of doing this, as this is a bit hacky. However my reasoning is I don't want to create another
    # facade method to hit the API again jsut to grab the total count, so for time complexity I choose to use an arr
    [arr, response[:totalCount]]
  end
end
