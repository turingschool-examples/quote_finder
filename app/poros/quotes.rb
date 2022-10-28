class Quotes
  attr_reader :id, :author, :content, :tags

  def initialize(quote)
    @id = quote[:_id]
    @author = quote[:author]
    @content = quote[:content]
    if !quote[:tags]
      return []
    else
      @tags = quote[:tags]
    end
  end
end