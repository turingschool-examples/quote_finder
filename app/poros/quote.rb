class Quote
    attr_reader :content,
                :author,
                :categories
  
    def initialize(data)
      @content = data[:content]
      @author = data[:author]
      @categories = data[:tags]
    end
end  