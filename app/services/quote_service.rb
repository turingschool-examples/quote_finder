class QuoteService
  def self.get_10_quotes_by_keyword(keyword)
    response = conn.get("/search/quotes?limit=10&query=#{keyword}")
    parse(response.body)
  end

  private 

  def self.conn
    Faraday.new('https://api.quotable.io')
  end

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end
end