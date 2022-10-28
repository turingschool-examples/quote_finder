class QuotesController < ApplicationController
  def search
    @quotes = QuotesFacade.find_quotes(params[:query])
    @results_count = QuotesFacade.results_count(params[:query])
  end
end