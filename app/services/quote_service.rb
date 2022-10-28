class QuoteService
  def get_quotes_search(quote)
    response = conn.get("search/quotes?query=#{quote}&limit=10")
    body = parsed(response)
  end

  private

  def conn
    Faraday.new(url: 'https://api.quotable.io/') do |faraday|
      faraday.params['api_key'] = ENV['api_key']
    end
  end

  def parsed(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
