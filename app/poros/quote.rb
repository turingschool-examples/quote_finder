class Quote
  attr_reader :author,
              :category,
              :content

  def initialize(quote_data)
    @author = quote_data[:author]
    @content = quote_data[:content]
    @category = quote_data[:tags]
  end
end