class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def show
    @quote = Quote.find(params[:id])
    @category_quote = CategoryQuote.new
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new
    @quote.lyric = params[:lyric]
    @quote.song_id = params[:song_id]
    @quote.artist_id = params[:artist_id]

    if @quote.save
      redirect_to "/quotes", :notice => "Quote created successfully."
    else
      render 'new'
    end
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])

    @quote.lyric = params[:lyric]
    @quote.song_id = params[:song_id]
    @quote.artist_id = params[:artist_id]

    if @quote.save
      redirect_to "/quotes", :notice => "Quote updated successfully."
    else
      render 'edit'
    end
  end

  def qotd
    @quote = Quote.offset(rand(Quote.count)).first
  end

  def destroy
    @quote = Quote.find(params[:id])

    @quote.destroy

    redirect_to "/quotes", :notice => "Quote deleted."
  end
end
