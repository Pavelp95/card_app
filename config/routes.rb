Rails.application.routes.draw do
  get 'card_page/show'
  get 'card/index'

  root 'card#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
