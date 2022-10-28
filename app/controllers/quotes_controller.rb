class QuotesController < ApplicationController

  def index
    @quotes = QuotableFacade.search_for_quotes(params[:query])
    @search_params = params[:query]
    # require "pry"; binding.pry
  end



end
