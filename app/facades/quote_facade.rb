class QuoteFacade
  def self.get_quotes_info(searched_string)
    json = QuoteService.get_quotes_info(searched_string)
    json[:results].map do |quote_data|
      Quote.new(quote_data)
    end
  end

  def self.get_total(searched_string) #consider moving this in with the method above
    json = QuoteService.get_total(searched_string)
    json[:totalCount]
  end
end