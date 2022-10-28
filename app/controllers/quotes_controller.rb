class QuotesController < ApplicationController
  def index
    @quotes = QuoteFacade.quotes(params[:query])
  end
end
