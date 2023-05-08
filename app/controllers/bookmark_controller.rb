class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new
    @bookmark = Bookmark.save!
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:name)
  end
end
