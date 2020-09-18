class CardsController < ApplicationController
  def index
    @cards = Card.all
    @card_pages = CardPage.all

    respond_to do |format|
       format.html
    end
  end
  
  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    binding.pry
    if @card.save
      redirect_to @card
    else 
      render :new
    end
	end

  def edit
    # code
  end


  def update
    @card = Card.find(params[:id])
    if @card.update_attributes(card_params)
      redirect_to @card
    else 
      render :edit
    end
  end

  
  private

  def card_params
    params.require(:card).permit(:title, :body)
  end
end
