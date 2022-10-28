class Quote
  attr_reader :author,
              :categories,
              :quote,
              :id

  def initialize(quote_info)
    @id = quote_info[:_id]
    @quote = quote_info[:content]
    @author = quote_info[:author]
    @categories = quote_info[:tags]
  end
end