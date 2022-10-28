class Quote
  attr_reader :author, :content, :tags

  def initialize(data)
    @author = data[:author]
    @content = data[:content]
    @tags = data[:tags]
  end
end