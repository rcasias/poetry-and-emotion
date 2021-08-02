class SearchController < ApplicationController
  def index
    @poems = PoetryFacade.author_search(params[:author]).first(10).each do |poem|
      @tones = ToneFacade.tone(poem.poem_lines)
    end
  end
end
