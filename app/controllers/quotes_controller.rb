class QuotesController < ApplicationController
  def index
    @quotes = QuotesFacade.searched_quotes(params[:query])
    @top_ten_quotes = @quotes.first(10)
  end
end
