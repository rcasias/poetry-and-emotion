class PoetryFacade
  def self.author_search(author)
    data = PoetryApiService.search(author)
    data.map do |attrs|
      Author.new(attrs)
    end
  end
end
