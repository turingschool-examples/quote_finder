class QuotesController < ApplicationController

  def index
    @quotes = QuotableFacade.quote_search(params[:query])
  end
end
