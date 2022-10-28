class QuotesController < ApplicationController
  def index
    search_results = QuotesFacade.get_search_results(params[:query])
    @top_10_quotes = search_results[:results]
    @total_results_count = search_results[:count]
  end
end