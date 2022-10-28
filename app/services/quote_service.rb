require 'faraday'
require 'json'

class QuoteService

 def self.conn
   Faraday.new(url: 'https://api.quotable.io/')
 end

 def self.search(search_params)
   response = conn.get("search/quotes?query=#{search_params}")
   body = JSON.parse(response.body, symbolize_names: true)
 end
end