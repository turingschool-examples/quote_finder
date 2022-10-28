class QuotableFacade

  def self.search_for_quotes(query)
    # require "pry"; binding.pry
    json = QuotableService.search_quotes(query)
    if json[:results].count > 0
      json[:results][0..9].map {|quote| Quote.new(quote, json[:count])}
    else
      [Quote.new({results: {content: [], tags: [], author: []}}, json[:count])]
    end

  end


end
