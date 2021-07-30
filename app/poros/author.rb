class Author
  attr_reader :title ,:author, :lines, :linecount

  def initialize(attrs)
    @title = attrs[:title]
    @author = attrs[:author]
    @lines = attrs[:lines]
    @linecount = attrs[:linecount]
  end
end
