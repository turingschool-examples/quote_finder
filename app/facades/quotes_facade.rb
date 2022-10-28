class QuotesFacade
  def self.search_quotes(query)
    quotes_hash = QuotesService.search_quotes(query)
    quotes_hash[:results].map { |quote_info| Quote.new(quote_info) }
  end
end