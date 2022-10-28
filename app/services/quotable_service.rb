require 'json'

class QuotableService
  def self.conn 
    Faraday.new(
      url: 'https://api.quotable.io'
    )
  end

  def self.quote_search_endpoint(keyword)
    response = conn.get('/search/quotes', { query: keyword })
    require 'pry'; binding.pry
    parse(response)
  end

  def self.parse(api_data)
    JSON.parse(api_data.body,  symbolize_names: true)
  end
end