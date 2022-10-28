# frozen_string_literal: true

class QuotesFacade
  def self.create_quotes(keyword)
    response = QuotesService.quotes(keyword)
    response[:results].map do |quote|
      Quote.new(quote)
    end
  end
end
