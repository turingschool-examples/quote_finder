class QuotesController < ApplicationController
  def index
  
    @quotes = QuoteFacade.find_quotes(params[:query])
  end
end