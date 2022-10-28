class QuotesController < ApplicationController
  def index
    @quotes = QuotesFacade.searched_quotes(params[:query])
  end
end
