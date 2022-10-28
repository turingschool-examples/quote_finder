class QuotesFacade
  def self.get_search_results(query)
    search_results = QuotesService.search_quotes(query)
    quotes = search_results[:results].map do |quote_data|
      Quote.new(quote_data)
    end
    count = search_results[:totalCount]
    {
      count: count,
      results: quotes
    }
  end
end