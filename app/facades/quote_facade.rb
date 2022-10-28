require "./app/services/quote_service"
require "./app/services/quote_service"

class QuoteFacade

  def self.find_quotes(keyword)
    parsed_data = QuoteService.get_quotes(keyword)
    quotes = parsed_data[:results]
  
    quotes.map do |quote_data|
      Quote.new(quote_data)
    end
  end
end