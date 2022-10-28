class Quote
  attr_reader :content,
              :author,
              :tags

  def initialize(data)
    @content = data[:content]
    @author = data[:author]
    @tags = data[:tags]
  end
end