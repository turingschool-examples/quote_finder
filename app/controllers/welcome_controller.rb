class WelcomeController < ApplicationController
  def index
  end

  def quotes
    # require 'pry', binding.pry

    @search = params[:query]
    if @search && @search == ""
      redirect_to "/"
    else
      @quotes = QuotableFacade.search_quotes(@search)
    end
  end
end