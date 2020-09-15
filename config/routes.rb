Rails.application.routes.draw do
  get 'card_page/show'
  get 'card/index'
  get 'card_page/new'

  root 'card#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
