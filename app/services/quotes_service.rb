class QuotesService

  def self.get_quotes(keyword)
    response = conn.get("/search/quotes?query=#{keyword}&limit=10")
    parse_body(response)
  end

  def self.parse_body(response)
    JSON.parse(response.body, symbolize_names: true)
  end
  def self.conn
    Faraday.new(url: 'https://api.quotable.io')
  end
end