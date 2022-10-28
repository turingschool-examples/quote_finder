class Quote
  attr_reader :author,
              :category
  
  def initialize(attributes)
    @author = attributes[:author]
    @category = attributes[:tags]
  end
end