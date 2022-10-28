class Quote
  attr_reader :id, :content, :author

  def initialize(attributes)
    @id = attributes[:_id]
    @content = attributes[:content]
    @author = attributes[:author]
    @attributes = attributes
  end

  def tags
    if @attributes[:tags]
      @attributes[:tags].map do |tag|
        tag
      end
    end
  end
end