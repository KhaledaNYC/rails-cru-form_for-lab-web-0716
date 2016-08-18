class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def create
    @artist = Artist.create(artist_details)
    redirect_to artist_path(@artist)
  end

  def new
    @artist = Artist.new
  end

  def show
      @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_details)
    redirect_to artist_path(@artist)
  end
  private
  def artist_details
    params.require(:artist).permit(:name,:bio)

  end
end
