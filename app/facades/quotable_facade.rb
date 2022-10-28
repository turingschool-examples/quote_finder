class QuotableFacade < QuotableService

  def self.quote_search(search_keyword)
   data = search(search_keyword)
   data[:results].map do |quote|
    Quotes.new(quote)
   end
  end
end