class QuoteFacade
 
 def self.quote_search(search_params)
  search_data = QuoteService.search(search_params)
  search = search_data[:results]
  end
  search.take(10)
 end
end