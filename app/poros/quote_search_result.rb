class QuoteSearchResult
  attr_reader :content,
              :author,
              :tags_array
  def initialize(api)
    @content = api[:content]
    @author = api[:author]
    @tags_array = api[:tags]
  end
end