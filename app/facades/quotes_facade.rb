class QuotesFacade
  def self.searched_quotes(query)
    quotes = QuoteService.search_quotes_api_call(query)

    # quotes.map do |quote|
    #   QuoteObject.new(quote)
    # end
  end

  def self.make_objects(quotes)
    quotes = quotes[:results]
    quotes.map do |quote|
      QuoteObject.new(quote)
    end
  end
end