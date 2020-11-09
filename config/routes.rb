Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :create, :index, :show]
  resources :categories, only: [ :create, :index, :show]
  resources :gtimes, only: [ :create,  :show]

  post '/signin', to: 'sessions#signin'
  get '/error', to: 'sessions#error'

  root 'categories#index'
end
