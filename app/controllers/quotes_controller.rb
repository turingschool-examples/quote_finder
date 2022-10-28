class QuotesController < ApplicationController
    def index
        @quotes = QuoteFacade.get_quotes(params[:keyword])
    end
end