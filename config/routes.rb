Rails.application.routes.draw do

  # resources :users, only: [:new, :create] # ONLY FOR THE FIRST ADMIN SIGNUP

  # Normal user actions
  root 'posts#index'
  resources :clients, only: [:index]
  resources :abouts, only: [:index], path: 'about'
  resources :posts, only: [:index], path: 'news'
  resources :contacts, only: [:new, :create], path: 'contact'

  # Admin actions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  namespace :admin do
    root 'posts#index'
    resources :clients
    resources :abouts, path: 'about'
    resources :posts, path: 'news'
    resources :contacts, path: 'contact'
  end
end
