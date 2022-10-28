class QuoteFacade
  def self.quotes_by_keyword(keyword)
    quote_data = QuoteService.get_10_quotes_by_keyword(keyword)
  end
end