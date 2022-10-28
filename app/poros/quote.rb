class Name
  attr_reader :id, :content, :author, :categories

  def initialize(data)
    @id = data[:id]
    @content = data[:content]
    @author = data[:author]
    @categories = data[:tags]
  end
end