Rails.application.routes.draw do
  # get 'card_page/show'
  # get 'card/index'
  get 'card_pages/new'
  get 'cards/new'
  # get 'card_page/create'


  root 'cards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cards
  resources :card_pages
end
