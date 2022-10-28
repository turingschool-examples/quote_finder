class QuotesService
  def self.top_10(query)
    response = conn.get("/search/quotes?query=#{query}&limit=10")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("https://api.quotable.io")
  end
end