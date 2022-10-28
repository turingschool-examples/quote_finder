class QuoteFacade
  def self.quotes(keyword)
    json = QuoteService.quote_search(keyword)
    json.map do |data|
      Quote.new(data)
    end
  end
end
