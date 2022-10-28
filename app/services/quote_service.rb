class QuoteService

  def self.conn
    Faraday.new('https://api.quotable.io')
  end

  def self.search_by_keyword(keyword)
    response = conn.get('/search/quotes', query: keyword, limit: 10)
    JSON.parse(response.body, symbolize_names: true)
  end
end
