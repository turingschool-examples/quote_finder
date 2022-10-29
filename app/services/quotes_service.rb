class QuotesService

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://api.quotable.io') do |faraday|
    end
  end

  def self.keyword_quotes(keyword)
    response = conn.get("/search/quotes?query=#{keyword}&limit=10")
    parse(response.body)
  end
end