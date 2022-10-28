class QuotesController < ApplicationController
  def index
    @quotes = QuoteFacade.quote_search(params[:query])
  end
end
