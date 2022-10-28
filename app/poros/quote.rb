class Quote
  attr_reader :id, :content, :author, :tags

  def initialize(attributes)
    @id = attributes[:_id]
    @content = attributes[:content]
    @author = attributes[:author]
    @tags = attributes[:tags].join(", ")
  end
end