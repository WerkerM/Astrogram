Rails.application.routes.draw do
  root "home#index"
  resources :users, only: [:create, :show, :edit, :update]
  resources :posts, except: [:edit, :update]
  get '/:email_token/confirm_email/', :to => "users#confirm_email", as: 'confirm_email'
  get '/signup', to: 'registrations#new'
  post '/signup', to: 'registrations#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
