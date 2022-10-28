class QuotesService
  def self.search_quotes(query)
    response = conn.get("/search/quotes", query: query, limit: 10)
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: "https://api.quotable.io/")
  end
end