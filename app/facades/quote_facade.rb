class QuoteFacade
  def self.top_10_query_quotes(search_query)
    quotes = QuoteService.get_search_quotes_api_call(search_query)

    quotes[:results].map do |quote|
      Quote.new(quote)
    end.(0..9) #might need to limit another way to include param if less than 10
  end

  def self.quote_count(search_query)
    quotes = QuoteService.get_search_quotes_api_call(search_query)

    quotes[:totalCount]
  end
end