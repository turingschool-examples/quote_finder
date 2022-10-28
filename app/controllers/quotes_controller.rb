class QuotesController < ApplicationController
  def index
    @quotes = QuotesFacade.top_10(params[:query])
  end
end