class QuotesController < ApplicationController

  def index
    @searched_string = params[:query]
    @quotes_total = QuoteFacade.get_total(@searched_string)
    @quotes = QuoteFacade.get_quotes_info(@searched_string)
  end

end