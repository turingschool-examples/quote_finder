  class QuoteFacade
    def self.search_quotes(keyword) 
      quotes = QuoteService.get_quotes_by_search(keyword)[:results]
      quotes[0..9].map do |quote_data|
        Quote.new(quote_data)
      end
    end
  end