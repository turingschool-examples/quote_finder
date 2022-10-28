class QuotableFacade
  def self.search_quotes(keyword)
    json = QuotableService.quotes_search_data(keyword)
    # require 'pry', binding.pry
    { total: json[:totalCount], quotes: json[:results].map do |quote_data|
      { quote: quote_data[:content],
        author: quote_data[:author],
        categories: quote_data[:tags] }
      end }
  end
end