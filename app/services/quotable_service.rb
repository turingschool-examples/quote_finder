class QuotableService
  def self.quotes_search_data(keyword)
    conn = Faraday.new(url: 'https://api.quotable.io') do |faraday|
      faraday.params['query'] = keyword
      faraday.params['limit'] = 10
    end
    response = conn.get('search/quotes')
    parse(response.body)
  end

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end
end