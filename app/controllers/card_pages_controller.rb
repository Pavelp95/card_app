class CardPagesController < ApplicationController

  def show
    @card_page = CardPage.find(params[:id])
  end

  def new
    Rails.logger.debug("=======")
    @card_page = CardPage.new
  end

  def create
    Rails.logger.debug("+++++++")
    @card_page = CardPage.new(card_params)
    binding.pry
    if @card_page.save
      Rails.logger.debug("-----------")
      redirect_to @card_page
    else 
      render :new
    end
	end

  def edit
    # code
  end


  def update
    @card_page = CardPage.find(params[:id])
    if @card_page.update_attributes(card_params)
      redirect_to @card_page
    else 
      render :edit
    end
  end

  
  private

  def card_params
    params.require(:card_page).permit(:title, :h1, :body)
  end
end
