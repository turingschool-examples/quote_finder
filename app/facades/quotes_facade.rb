class QuotesFacade
  def self.total_quotes(search)
    QuoteService.get_quotes_count_by_search(search)
  end

  def self.find_quotes(search)
    quotes = Quotes.get_quotes_by_search(search)

    quotes.map do |quote|
      Quote.new(quote)
    end
  end
end