class CardController < ApplicationController
  def index
    @card = Card.limit(5)
  end
end
