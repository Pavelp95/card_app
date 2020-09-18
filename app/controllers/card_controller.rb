class CardController < ApplicationController
  	def index
    	@cards = Card.all
    	@card_pages = CardPage.all

    	respond_to do |format|
        format.html
     end
	end
end
