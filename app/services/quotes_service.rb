class QuotesService
  def self.conn
    Faraday.new(url: 'https://api.quotable.io/')
  end

  def self.searched_quotes(keyword)
    response = conn.get('/search/quotes', { query: keyword })
    JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry
  end
end
