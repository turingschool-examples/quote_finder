class Quote
  attr_reader :content, :tags, :author

  def initialize(quote_data)
    @content = quote_data[:content]
    @tags = quote_data[:tags]
    @author = quote_data[:author]
  end
end