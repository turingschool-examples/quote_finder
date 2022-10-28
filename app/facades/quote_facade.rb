class QuoteFacade
    def self.get_quotes(keyword)
      quotes_data = QuoteService.quote_search(keyword)
      
      quotes_data[:results][0..9].map do |quote_data|
        Quote.new(quote_data)
      end
    end
end