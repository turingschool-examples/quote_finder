class QuotesFacade
  def self.searched_quotes(keyword)
    json = QuotesService.searched_quotes(keyword)
    @quotes = json[:results].map do |quote_data|
      Quote.new(quote_data)
    end
  end
end