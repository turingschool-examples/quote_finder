class Quote
  attr_reader :quote, 
              :author,
              :categories
              
  def initialize(data)
    @quote = data[:content]
    @author = data[:author]
    @categories = data[:tags]
  end
end