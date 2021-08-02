class SearchController < ApplicationController
  def index
    @tone_array = []
    @poems = PoetryFacade.author_search(params[:author]).first(10).each do |poem|
      @tone_array << ToneFacade.tone(poem.poem_lines)
    end
  end
end
