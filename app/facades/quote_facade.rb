class QuoteFacade
  def self.get_quotes_info(searched_string)
    json = QuoteService.get_quotes_info(searched_string)
    json[:results].map do |quote_data|
      Quote.new(quote_data)
    end
  end

  def self.get_total(searched_string)
    json = QuoteService.get_quotes_info(searched_string)
    json[:totalCount]
  end
end