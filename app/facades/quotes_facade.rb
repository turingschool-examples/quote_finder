class QuotesFacade
  def self.keyword_quotes_search(keyword)
    keyword_search = QuotesService.keyword_quotes(keyword)
    {
      keyword: keyword,
      total_results: keyword_search[:totalCount],
      quotes: keyword_search[:results].map { |quote| Quote.new(quote)}
    }
  end
end