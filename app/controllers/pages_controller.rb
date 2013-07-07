class PagesController < ApplicationController
  def index
    @search = Search.new
    @search.room_searches.build
  end

  def about
  end

  def terms
  end
end
