class QuotableService

  def self.search_quotes(search_params)
    response = connection.get("search/quotes?query=#{search_params}")
    parse(response.body)
  end


  def self.connection
    Faraday.new(url: 'https://api.quotable.io') do |faraday|
      faraday.params['api_key'] = ENV['themoviedb_key']
    end
  end

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end

end
