class QuoteFacade

  def self.quote_finder(keyword)
    quotes_data = QuoteService.quotes_search(keyword)
    quotes_data[:results].map do |quote|
      Quote.new(quote)
    end
  end
end
