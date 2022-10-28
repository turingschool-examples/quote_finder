# frozen_string_literal: true

class Quote
  attr_reader :content,
              :author,
              :tags,
              :id

  def initialize(data)
    @id = data[:_id]
    @content = data[:content]
    @author = data[:author]
    @tags = data[:tags]
  end
end
