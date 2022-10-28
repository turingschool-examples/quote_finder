require 'json'

class QuotableService 

  def self.connection
    Faraday.new(
      url: 'https://quotable.io/search/quotes'
    )
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_names: true)
  end
  
  # https://quotable.io/quotes?query=I am&limit=10
  def self.search(search_keyword)
    response = connection.get("?query=#{search_keyword}&limit=10")
    parse(response)
  end
end