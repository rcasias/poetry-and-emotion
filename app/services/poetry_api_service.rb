class PoetryApiService
  def self.search(author_name)
    response = Faraday.get("https://poetrydb.org/author/#{author_name}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
