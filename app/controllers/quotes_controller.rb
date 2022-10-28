class QuotesController < ApplicationController

  def index 

    @quotes_data = QuotesFacade.get_quotes(params[:query])
  end
end