class SongsController < ApplicationController
  before_action :find_song, only: [:destroy]
  before_action :set_artist

  def create
    @artist.songs.create!(song_params)
    redirect_to artist_path(@artist)
  end

  def destroy
    @song.destroy

    redirect_to artist_path(@artist)
  end

  private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title)
  end

  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
