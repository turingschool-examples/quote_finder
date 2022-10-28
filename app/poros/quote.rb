class Quote
  attr_reader :content,
              :author

  def initialize(data)
    @content = data[:content]
    @author = data[:author]
    @tags_array = data[:tags]
  end

  def tags
    if @tags_array.nil? || @tags_array.empty?
      "no tags present"
    else
      @tags_array.join(", ")
    end
  end
end