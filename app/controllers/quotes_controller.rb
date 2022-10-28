class QuotesController < ApplicationController
  def index
    @quotes = QuotesFacade.search_by_keyword(params[:query])
    @total_count = QuotesFacade.total_count_by_keyword(params[:query])
    @keyword = params[:query]
  end
end