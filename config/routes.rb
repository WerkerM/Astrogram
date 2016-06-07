Rails.application.routes.draw do
  root "home#index"
  resources :users, only: [:create, :show]
  resources :posts, except: [:edit, :update]
  resources :comments, only: [:create]

  get '/confirm_email/:email_token/', :to => "users#confirm_email", as: 'confirm_email'
  get '/signup', to: 'registrations#new'
  post '/signup', to: 'registrations#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '*path' => redirect('/')
end
