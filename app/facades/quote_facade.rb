class QuoteFacade
  def self.quote_search(quote)
    results = service.get_quotes_search(quote)
    results[:results].map do |attributes|
      Quote.new(attributes)
    end
  end

  def self.total_count(quote)
    results = service.get_quotes_search(quote)
    results[:totalCount]
  end

  def self.service
    QuoteService.new
  end
end
