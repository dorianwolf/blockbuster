Rails.application.routes.draw do

  root 'abouts#index'

  resources :users, only: [:new, :create] # ONLY FOR THE FIRST ADMIN SIGNUP
  resources :clients, only: [:index]
  resources :abouts, only: [:index], path: 'about'
  resources :posts, only: [:index], path: 'news'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  namespace :admin do
    root 'abouts#index'
    resources :clients
    resources :abouts, path: 'about'
    resources :posts, path: 'news'
  end
end
