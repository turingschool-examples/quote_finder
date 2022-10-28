class QuotesController < ApplicationController 
  def index
    @search = params[:query]
    @total_count = QuotesFacade.total_quotes(@search)

    @quotes = Quotesfacade.find_quotes(search)
  end
end