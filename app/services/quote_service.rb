class QuoteService
  def self.quote_search(keyword)
    response = conn.get("search/quotes?query=#{keyword}&limit=10")
    output = JSON.parse(response.body, symbolize_names: :true)[:results]
  end

  def self.conn
  Faraday.new(url: 'https://api.quotable.io/')
  end
end
