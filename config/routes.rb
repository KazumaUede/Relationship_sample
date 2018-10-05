Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :messages, only: [:index, :show, :create]
  resources :relationships, only: [:create, :destroy]
  resources :users do
    member do
     get :following, :followers
    end
  end
end
