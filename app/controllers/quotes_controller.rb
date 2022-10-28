# frozen_string_literal: true

class QuotesController < ApplicationController
  def index
    quotes_arr = QuotesFacade.create_quotes(params[:query])
    @quotes = quotes_arr[0]
    @total_count = quotes_arr[1]
  end
end
