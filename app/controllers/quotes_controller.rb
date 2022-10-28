class QuotesController < ApplicationController
  def index
    @quotes = QuoteFacade.quote_search(params[:q])
    @count = QuoteFacade.total_count(params[:q])
  end
end
