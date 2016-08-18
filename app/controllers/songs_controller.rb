class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def create
    @song = Song.create(song_details)
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_details)
    redirect_to song_path(@song)
  end

  private
  def song_details
    params.require(:song).permit(:name,:artist_id,:genre_id)

  end

end
