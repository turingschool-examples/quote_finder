class Quote
  attr_reader :author,
              :content,
              :categories

  def initialize(quote_data)
    @author = quote_data[:author]
    @content = quote_data[:content]
    if quote_data[:tags].nil?
      return "N/A"
    else
      @categories = quote_data[:tags].join(", ")
    end
  end
end
