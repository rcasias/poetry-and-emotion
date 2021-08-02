class PoetryApiService
  def self.search(author_name)
    n =  ERB::Util.url_encode(author_name)
    response = Faraday.get("https://poetrydb.org/author/#{n}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
