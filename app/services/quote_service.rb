class QuoteService
  def self.conn
    Faraday.new(url: "https://api.quotable.io") do |f|
      f.adapter Faraday.default_adapter
    end
  end

  def self.search_by_input(input)
    response = conn.get("/search/quotes?query=#{input}&limit=10&sortBy=quoteCount")
    JSON.parse(response.body, symbolize_names: true)
  end
end