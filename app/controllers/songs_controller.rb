class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find_by(id: @song.artist_id)
    @genre = Genre.find_by(id: @song.genre_id)
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.new(song_params)
    if song.save
      redirect_to song
    else
      redirect_to new_song_path
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.update(song_params)
    redirect_to song
  end

  def delete
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
