class QuoteFacade
  def self.quote_search(keyword)
    QuoteService.search_by_keyword(keyword)[:results].map do |quote_hash|
      Quote.new(quote_hash)
    end
  end
end
