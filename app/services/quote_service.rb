class QuoteService

  def self.get_quotes_info(searched_string)
    response = conn.get("/search/quotes?query=#{searched_string}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_total(searched_string)
    response = conn.get("/search/quotes?query=#{searched_string}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  def self.conn
    Faraday.new(url: "https://api.quotable.io") 
  end
end