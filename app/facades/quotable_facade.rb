class QuotableFacade < QuotableService
  def self.quote_search(keyword)
    quote_search_endpoint(keyword)[:results].map do |quote|
      QuoteSearchResult.new(quote)
    end.slice(0, 10)
  end

  def self.quote_search_total_count(keyword)
    quote_search_endpoint(keyword)[:totalCount]
  end
end