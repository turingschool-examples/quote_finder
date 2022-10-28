class QuoteService

  def self.search_quotes_api_call(query)
    response = conn.get("search/quotes?query=#{query}&limit=10")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new('https://api.quotable.io/')
  end
end
