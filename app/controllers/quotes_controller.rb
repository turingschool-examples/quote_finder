class QuotesController < ApplicationController
    def index
        @quotes = QuotesFacade.get_list
    end
end