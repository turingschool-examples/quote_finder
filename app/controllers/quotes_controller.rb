class QuotesController < ApplicationController

  def index
    @quotes = QuotableFacade.search(params[:query])

  end
end
