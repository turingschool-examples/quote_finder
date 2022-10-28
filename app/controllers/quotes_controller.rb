class QuotesController < ApplicationController
  def index
  @keyword = params[:query]
  @quotes = QuoteFacade.quote_finder(@keyword)
  end
end
