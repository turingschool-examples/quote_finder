class Quote
  attr_reader :content,
              :author,
              :tags

  def initialize(quote_data)
    @content = quote_data[:content]
    @author = quote_data[:author]
    @tags = quote_data[:tags]
  end
end