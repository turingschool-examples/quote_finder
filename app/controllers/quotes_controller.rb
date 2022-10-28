class QuotesController < ApplicationController
  def index
    @quotes = QuoteFacade.search_term(params[:query])
    json = QuoteService.search_by_input(params[:query])
    @total = json[:totalCount]
  end
end
