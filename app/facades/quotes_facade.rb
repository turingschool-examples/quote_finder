class QuotesFacade
  def self.top_10(query)
    quotes_hash = QuotesService(query)
    quotes_hash.map { |quote_info| Quote.new(quote_info) }
  end
end