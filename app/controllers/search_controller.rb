class SearchController < ApplicationController
  def index
    @query = params[:query]
    @top_results = QuotableFacade.top_results(@query)
    @result_count = QuotableFacade.result_count(@query)
  end
end