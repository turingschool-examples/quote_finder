class QuoteService

  def self.quotes_search(keyword)
    response = conn.get("search/quotes?query=#{keyword}")
    parse(response)
  end

private

  def self.conn
    Faraday.new("https://api.quotable.io")

  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
