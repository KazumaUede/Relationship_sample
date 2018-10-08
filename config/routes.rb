Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :groups, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
  resources :relationships, only: [:create, :destroy]
  resources :users do
    member do
     get :following, :followers
    end
  end
end
