# frozen_string_literal: true

class QuotesService
  def self.quotes(keyword)
    parse(conn.get("/search/quotes?query=#{keyword}&limit=10"))
  end

  def self.conn
    conn ||= Faraday.new('https://api.quotable.io/')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
