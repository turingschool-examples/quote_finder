class Quote
  attr_reader :id, :author, :content, :tags

  def initialize(quote_data)
    @id = quote_data[:_id]
    @author = quote_data[:author]
    @content = quote_data[:content]
    @tags = quote_data[:tags]
  end
end