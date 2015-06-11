class AlbumsController < ApplicationController
  def index
    @albums = Album.order(:year)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new
    @album.title = params[:title]
    @album.artist_id = params[:artist_id]
    @album.year = params[:year]

    if @album.save
      redirect_to "/albums", :notice => "Album created successfully."
    else
      render 'new'
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])

    @album.title = params[:title]
    @album.artist_id = params[:artist_id]
    @album.year = params[:year]

    if @album.save
      redirect_to "/albums", :notice => "Album updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @album = Album.find(params[:id])

    @album.destroy

    redirect_to "/albums", :notice => "Album deleted."
  end
end
