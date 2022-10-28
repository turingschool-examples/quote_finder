class QuotesFacade
  def self.top_10(query)
    quotes_hash = QuotesService.top_10(query)
    quotes_hash[:results].map { |quote_info| Quote.new(quote_info) }
  end
end