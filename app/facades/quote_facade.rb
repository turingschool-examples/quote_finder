class QuoteFacade
  def self.quote_search(query)
    search_results = QuoteService.quote_search(query)
    QuoteSearch.new(search_results)
  end
end