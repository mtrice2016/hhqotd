class CategoryQuotesController < ApplicationController
  def index
    @category_quotes = CategoryQuote.order(:category_id)
  end

  def show
    @category_quote = CategoryQuote.find(params[:id])
  end

  def new
    @category_quote = CategoryQuote.new
  end

  def create
    @category_quote = CategoryQuote.new
    @category_quote.quote_id = params[:quote_id]
    @category_quote.category_id = params[:category_id]

    if @category_quote.save
      redirect_to "/category_quotes", :notice => "Category quote created successfully."
    else
      render 'new'
    end
  end

  def edit
    @category_quote = CategoryQuote.find(params[:id])
  end

  def update
    @category_quote = CategoryQuote.find(params[:id])

    @category_quote.quote_id = params[:quote_id]
    @category_quote.category_id = params[:category_id]

    if @category_quote.save
      redirect_to "/category_quotes", :notice => "Category quote updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @category_quote = CategoryQuote.find(params[:id])

    @category_quote.destroy

    redirect_to "/category_quotes", :notice => "Category quote deleted."
  end
end
