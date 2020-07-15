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
    song = Song.create(name: song_params[:name])
    artist = Artist.find_or_create_by(name: song_params[:artist])
    genre = Genre.find_or_create_by(name: song_params[:genre])
    song.artist = artist
    song.genre = genre
    song.save
    redirect_to song
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
    params.require(:song).permit(:name, :artist, :genre)
  end

end
