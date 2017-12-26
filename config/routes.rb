Rails.application.routes.draw do
  resources :organizations
  resources :perms
  resources :user_perms
  resources :proj_types
  resources :clients
  resources :providers
  resources :matches
  devise_for :users, controllers: { sessions: 'users/sessions' , registrations: 'users/registrations'}
  root to: 'matches#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
