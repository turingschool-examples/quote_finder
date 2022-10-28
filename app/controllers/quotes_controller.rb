class QuotesController < ApplicationController
  def index
    @search = params[:query]
    @quotes = QuoteFacade.search_term(params[:query])
  end
end
