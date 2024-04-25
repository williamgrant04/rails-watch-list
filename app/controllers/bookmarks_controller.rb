class BookmarksController < ApplicationController
  before_action :set_list, only: %i[new create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@bookmark.list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      redirect_to list_path(@bookmark.list), status: :see_other
    else
      redirect_to list_path(@bookmark.list), status: 500
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
