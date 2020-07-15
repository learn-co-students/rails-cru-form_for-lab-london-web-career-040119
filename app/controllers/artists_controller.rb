class ArtistsController < ApplicationController
  before_action :find_artist, except: %i[index new create]

  def index
    @artists = Artist.all
  end

  def show; end

  def new
    @artist = Artist.new
  end

  def edit; end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:success] = 'Artist successfully created'
      redirect_to @artist
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def update
    if @artist.update_attributes(artist_params)
      flash[:success] = 'Artist was successfully updated'
      redirect_to @artist
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  def destroy
    if @artist.destroy
      flash[:success] = 'Artist was successfully deleted'
      redirect_to @artists_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to @artists_path
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end
end
