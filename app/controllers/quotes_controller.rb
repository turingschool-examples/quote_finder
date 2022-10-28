class QuotesController < ApplicationController
  def index
    @quotes = QuotesFacade.search_quotes(params[:query])
    @total_count = @quotes.count
    if @total_count == 0
      redirect_to root_path
      flash[:alert] = "Unable to locate quotes, try again"
    elsif @total_count > 10
      @quotes = @quotes[0..9]
    end
  end
end