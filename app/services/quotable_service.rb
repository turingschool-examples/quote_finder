class QuotableService
  def self.quotes_search_data(keyword)
    conn = Faraday.new(url: 'api.quotable.io') do |faraday|
      faraday.params['query'] = keyword
      faraday.params['limit'] = 10
    end
    response = conn.get('quotes')
    parse(response.body)
  end
end