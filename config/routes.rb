Rails.application.routes.draw do
  root "home#index"
  resources :users, only: [:show, :edit, :update]
  resources :posts, except: [:edit, :update]
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end
