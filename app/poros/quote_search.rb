class QuoteSearch
  attr_reader :num_results,
              :quotes

  def initialize(quote_data)
    @num_results = quote_data[:totalCount]
    @quotes = quote_data[:results].map { |quote| Quote.new(quote) }
  end
end
