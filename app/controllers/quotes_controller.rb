# frozen_string_literal: true

class QuotesController < ApplicationController
  def index
    @quotes = QuotesFacade.create_quotes(params[:query])
  end
end
