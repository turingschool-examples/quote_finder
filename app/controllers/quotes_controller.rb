class QuotesController < ApplicationController
  def index
    @results = QuoteFacade.quote_search(params[:query])
    @search_term = params[:query]
  end
end
