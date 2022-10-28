class QuoteFacade
    def self.get_quotes(keyword)
      quotes_data = QuoteService.quote_search(keyword)

      quotes_data[:results].map do |quote_data|
        Quote.new(quote_data)
      end
    end
end