class WelcomeController < ApplicationController
  def index
  end

  def quotes
    @search = params[:keyword]
    if @search && @search == ""
      redirect_to "/"
    else
      @quotes = QuotableFacade.search_movies(@search)
    end
  end
end