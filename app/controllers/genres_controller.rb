class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.create(genre_details)
    redirect_to genre_path(@genre)
  end

  def new
    @genre = Genre.new
  end

  def show
      @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_details)
    redirect_to genre_path(@genre)
  end
  private
  def genre_details
    params.require(:genre).permit(:name,:bio)

  end
end
