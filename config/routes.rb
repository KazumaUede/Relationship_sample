Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :messages, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :create]
end
