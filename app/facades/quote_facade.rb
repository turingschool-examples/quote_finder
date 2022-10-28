class QuoteFacade
  def self.quotes_by_keyword(keyword)
    quotes_data = QuoteService.get_10_quotes_by_keyword(keyword)
    quotes = {total_quotes: quotes_data[:totalCount], quotes: []}
    quotes[:quotes] = quotes_data[:results].map do |quote_data|
      Quote.new(quote_data)
    end
    quotes
  end
end