require 'faraday'
require 'json'

class QuoteService
  
  def self.get_quotes_count_by_search(search)
    response = self.conn.get("/search/quotes?query=#{search}")
    resp = parse(response)
    resp[:totalCount]
  end

  def self.get_quotes_by_search(search)
    response = self.conn.get("/search/quotes?query=#{search}") 
    resp = parse(response)
  end

  private
  def self.conn
    conn = Faraday.new(url: 'https://api.quotable.io')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end