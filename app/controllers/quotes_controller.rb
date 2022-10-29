class QuotesController < ApplicationController
  def index
    @quotes_search = QuotesFacade.keyword_quotes_search(params[:query])
  end
end