class QuotesController < ApplicationController
    def index
        @data = QuoteService.quote_search(params[:query])
        @quotes = QuoteFacade.get_quotes(params[:query])
    end
end