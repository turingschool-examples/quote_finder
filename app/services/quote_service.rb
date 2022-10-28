class QuoteService

  def self.get_quotes(keyword)
    response = Faraday.get("https://api.quotable.io/search/quotes?query=#{keyword}&limit=10")
    JSON.parse(response.body, symbolize_names: true)
  end
end