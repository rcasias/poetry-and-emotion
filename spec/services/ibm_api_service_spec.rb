require 'rails_helper'


RSpec.describe PoetryApiService do
  it "searches our API Service" do
    author_name = "Adam%20Lindsay%20Gordon"
    # binding.pry
    results = PoetryApiService.search(author_name)
    adam_1 = results[0]

    expect(adam_1).to have_key(:title)
    expect(adam_1).to have_key(:author)
    expect(adam_1).to have_key(:lines)
    expect(adam_1).to have_key(:linecount)

    expect(results).to be_an Array

    expect(adam_1[:title]).to be_a String
    expect(adam_1[:author]).to be_a String
    expect(adam_1[:lines]).to be_an Array
    expect(adam_1[:lines][0]).to be_a String
    expect(adam_1[:linecount]).to be_a String
  end
end
