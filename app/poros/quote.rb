class Quote
  attr_reader :author, :content, :categories

  def initialize(quote_data)
    @author = quote_data[:author]
    @content = quote_data[:content]
    @categories = quote_data[:tags]
  end  
end