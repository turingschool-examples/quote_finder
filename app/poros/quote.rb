class Quote
    attr_reader :content,
                :author,
                :categories
  
    def initialize(data)
      @content = data[:results][0][:content]
      @author = data[:results][0][:author]
      @categories = data[:results][0][:tags]
    end
end  