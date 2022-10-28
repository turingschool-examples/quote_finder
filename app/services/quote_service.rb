class QuoteService
  def get_quotes_search(quote)
    response = conn.get("search/quotes?query=#{quote}&limit=10")
    body = parsed(response)
  end

  private

  def conn
    Faraday.new(url: 'https://api.quotable.io/')
  end

  def parsed(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
