class Quote
  attr_reader :id, :author, :content, :category
  def initialize(data)
    @id = data[:_id]
    @author = data[:author]
    @content = data[:content]
    @category = data[:tags]
  end
end
