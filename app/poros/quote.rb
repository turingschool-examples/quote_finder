class Quote
  attr_reader :id, :content, :author, :categories

  def initialize(quote_data)
    @id = quote_data[:_id]
    @content = quote_data[:content]
    @author = quote_data[:author]
    @categories = quote_data[:tags]
  end
end