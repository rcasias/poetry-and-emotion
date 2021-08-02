require 'rails_helper'

describe 'PoetryFacade' do
  it 'it should call facade and retrieve search results' do
    author_name = "Adam Lindsay Gordon"
    result = PoetryFacade.author_search(author_name)

    expect(result).to be_an Array
    first_author = result.first
    expect(first_author).to be_a(Author)
    expect(first_author.title).to eq("A Song of Autumn")
    expect(first_author.author).to eq("Adam Lindsay Gordon")
    expect(first_author.lines[0]).to eq("‘WHERE shall we go for our garlands glad")
    expect(first_author.linecount).to eq("16")
  end
end
