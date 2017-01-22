class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  def index
    @artists = Artist.order(sort_column + " " + sort_direction)
  end

  def show
  end

  def new
    @artist = Artist.new(artist_params)
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:user).permit(:name)
  end

  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
