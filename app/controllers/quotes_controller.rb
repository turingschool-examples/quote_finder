class QuotesController < ApplicationController
  def search
    @quotes = QuotesFacade.find_quotes(params[:query])
  end
end