class QuotesController < ApplicationController
  def index
    if params[:query].present?
      @quotes = QuoteFacade.find_quotes(params[:query])
    else
      redirect_to root_path
      flash[:alert] = "Please enter a search term"
    end
  end
end