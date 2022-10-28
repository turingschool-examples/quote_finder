class QuoteService
    def self.conn
      connection = Faraday.new(url: "https://api.quotable.io/search/")
    end

    def self.quote_search(keyword)
        response = conn.get("quotes?query=#{keyword}")
        
        JSON.parse(response.body, symbolize_names: true)
    end
end