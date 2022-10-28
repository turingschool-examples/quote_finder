class QuotesFacade
  def self.search_by_keyword(keyword)
    quotes_data = QuotesService.search_by_keyword(keyword)
    quotes = quotes_data[:results].map do |data|
      Quote.new(data)
    end
  end

  def self.total_count_by_keyword(keyword)
    quotes_data = QuotesService.search_by_keyword(keyword)
    quotes_data[:totalCount]
  end
end