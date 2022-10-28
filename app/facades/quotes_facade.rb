class QuotesFacade
  def self.find_quotes(search_params)
    data = QuoteService.get_quotes(search_params)
    quotes = data[:results]
    quotes&.map do |quote_data|
      Quote.new(quote_data)
    end
  end

  def self.results_count(search_params)
    data = QuoteService.get_quotes(search_params)
    data[:totalCount]
  end
end