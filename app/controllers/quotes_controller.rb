class QuotesController < ApplicationController 
  def search
    @keyword = params[:query]
    @quotes = QuotableFacade.quote_search(params[:query])
    @total_count = QuotableFacade.quote_search_total_count(params[:query])
  end
end