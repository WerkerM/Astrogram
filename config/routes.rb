Rails.application.routes.draw do
  root "home#index"
  resources :users, only: [:show, :edit, :update]
  resources :posts, except: [:edit, :update]
end
