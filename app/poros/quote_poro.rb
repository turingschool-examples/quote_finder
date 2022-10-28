class QuotePoro

  def initialize(quote_data)
    @author = quote_data[:author]
    @content = quote_data[:content]
    if quote_data[:tags].nil?
      return []
    else
      @categories = quote_data[:tags].map{|tag| "#{tag}"}
    end
  end
end