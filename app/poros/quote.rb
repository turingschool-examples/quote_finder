class Quote
  attr_reader :content,
              :author,
              :tags,
              :total_quotes

  def initialize(data, q_count)
    @content = data[:content]
    @author = data[:author]
    @tags = data[:tags]
    @total_quotes = q_count

  end

end
