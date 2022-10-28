require 'faraday'
require 'json'

class QuotableService

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://api.quotable.io')
  end

  def self.top_results(query)
    response = conn.get("/quotes?query=#{query}&limit=10")
    parse(response.body)
  end
end