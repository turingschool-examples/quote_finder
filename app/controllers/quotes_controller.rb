class QuotesController < ApplicationController
 def search
  response = Faraday.get('https://api.quotable.io/search/quotes')
  @quotes = JSON.parse(response.body, symbolize_names: true)
 end
end
