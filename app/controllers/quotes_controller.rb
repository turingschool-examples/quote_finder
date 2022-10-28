class QuotesController < ApplicationController

  def search
    @quotes_info = QuotesFacade.searched_quotes(params[:query])
    @quotes = QuotesFacade.make_objects(@quotes_info)
  end
end