class QuotableFacade < QuotableService

  def quote_search(search_keyword)
   data = search(search_keyword)
   require 'pry'; binding.pry
  end
end