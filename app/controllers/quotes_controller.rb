class QuotesController < ApplicationController
  def index
    @quotes = QuotesFacade.search_by_keyword(params[:query])
  end
end