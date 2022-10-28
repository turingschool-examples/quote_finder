class QuoteService

  def self.get_quotes_by_search(keyword)
    response = conn.get("?query=#{keyword}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  def self.conn
    Faraday.new(url: "https://api.quotable.io/search/quotes")
  end
end