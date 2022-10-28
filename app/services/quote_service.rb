require 'faraday'
require 'json'

class QuoteService
  def self.get_quotes(search_params)
    response = self.conn.get("/search/quotes?query=#{search_params}")
    parse(response)
  end

  private

  def self.conn
    Faraday.new(url: 'https://quotable.io')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end