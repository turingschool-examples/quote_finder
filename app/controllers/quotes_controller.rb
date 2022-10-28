class QuotesController < ApplicationController 
  def index
    @keyword = params[:query].capitalize
    quote_data = QuoteFacade.quotes_by_keyword(@keyword)
    @quote_count = quote_data[:total_quotes]
    @quotes = quote_data[:quotes]
  end
end