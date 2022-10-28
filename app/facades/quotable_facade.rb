class QuotableFacade

  def self.search_for_quotes(query)
    # require "pry"; binding.pry
    json = QuotableService.search_quotes(query)
    json[:results][0..9].map {|quote| Quote.new(quote, json[:count])}

  end


end
