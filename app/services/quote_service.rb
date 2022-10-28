class QuoteService
  
  def self.conn
    Faraday.new(url: 'api.quotable.io/') #do |faraday|
      #faraday.params['api_key'] = ENV['name_api_key']
    #end
  end
  
  def self.get_quotes_api_call
    response = conn.get('/quotes')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_search_quotes_api_call(search_query)
    response = conn.get("/search/quotes?query=#{search_query}")
    JSON.parse(response.body, symbolize_names: true)
  end

end






#could refactor and split up like in viewing party