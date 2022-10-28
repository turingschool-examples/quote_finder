class QuotableFacade
  def self.top_results(query)
    json = QuotableService.top_results(query)

    json[:results].map do |quote_data|
      Quote.new(quote_data)
    end
  end

  def self.result_count(query)
    json = QuotableService.top_results(query)
    json[:totalCount]
  end
end