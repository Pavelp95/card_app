class CardPageController < ApplicationController
  def show
    @card = Card.find(params[:id])
  end

  def new
	@card = Card.new
  end

  def create
	@card = Card.new(card_params)

	if @card.save
		redirect_to @card
	else 
		render :new
	end
	end

  def edit
    # code
  end
  private

  def card_params
	params.require(:card).permit(:title, :h1, :body)
  end
end
