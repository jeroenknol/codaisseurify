class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Songs.order(sort_column + " " + sort_direction)
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @song.update_attributes(song_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  def destroy
    @song.destroy

    redirect_to song_path
  end

  private
  def find_song
    @song = song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name)
  end

  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
