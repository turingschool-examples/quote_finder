class QuotesController < ApplicationController
  def index
    @quotes = QuoteFacade.quote_search(params[:query])
    @count = QuoteFacade.total_count(params[:query])
  end
end
