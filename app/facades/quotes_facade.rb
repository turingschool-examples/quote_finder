class QuotesFacade

  def self.get_quotes(keyword)
    quotes = QuotesService.get_quotes(keyword)
    results = quotes[:results].map do |quote|
      Quote.new(quote)
    end
    
    [quotes[:totalCount], results]
  end
end