Rails.application.routes.draw do
  resources :clients
  resources :providers
  resources :matches
  devise_for :users
  root to: 'matches#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
