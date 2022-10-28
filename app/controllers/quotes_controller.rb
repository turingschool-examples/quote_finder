class QuotesController < ApplicationController
  def index
    keyword = params[:keyword]
    @quotes = QuoteFacade.search_quotes(keyword)
  end

  def search
    @quotes = QuoteFacade.search_quotes(params[:keyword])
  end
end
