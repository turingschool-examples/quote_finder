class QuoteObject
  attr_reader :quote, :author, :categories

  def initialize(results)
    @quote = results[:content]
    @author = results[:author]
    @categories = results[:tags]
  end
end