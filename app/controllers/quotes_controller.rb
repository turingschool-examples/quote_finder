class QuotesController < ApplicationController
 def search
  @quotes = QuoteFacade.quote_search(params[:query])
 end
end
