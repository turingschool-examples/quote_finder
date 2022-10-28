require 'faraday'
require 'json'

class QuoteService

 def self.conn
   Faraday.new(url: '')
 end

 def self.search(search_params)
   response = conn.get("")
   body = JSON.parse(response.body, symbolize_names: true)
 end
end