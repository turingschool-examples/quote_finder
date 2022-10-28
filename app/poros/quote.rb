class Quote
  attr_reader :id, :content, :author, :tags
  
  def initialize(data)
    @id = data[:_id]
    @content = data[:content]
    @author = data[:author]
    @tags = data[:tags]
  end
end