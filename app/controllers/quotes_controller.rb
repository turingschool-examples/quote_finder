class QuotesController < ApplicationController
    def index
        @quotes = QuoteFacade.get_quotes(params[:query])
    end
end