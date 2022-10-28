class QuoteFacade
  def self.quote_search(query)
    search = QuoteService.search_by_keyword(query)
    {
      query: query,
      results: search[:results].map { |quote_hash| Quote.new(quote_hash) },
      total_count: search[:totalCount]
    }
  end
end
