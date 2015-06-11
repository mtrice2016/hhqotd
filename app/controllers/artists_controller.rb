class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:artist)
  end

  def show
    @artist = Artist.find(params[:id])


  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.artist = params[:artist]
    @artist.photo = params[:photo]
    @artist.bio = params[:bio]

    if @artist.save
      redirect_to "/artists", :notice => "Artist created successfully."
    else
      render 'new'
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.artist = params[:artist]
    @artist.photo = params[:photo]
    @artist.bio = params[:bio]

    if @artist.save
      redirect_to "/artists", :notice => "Artist updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to "/artists", :notice => "Artist deleted."
  end
end
