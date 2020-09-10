Rails.application.routes.draw do
  get 'rides/index'
  get 'rides/show'
  get 'rides/new'
  get 'rides/edit'
  devise_for :users
  root to: 'pages#home'

  #PAGES
  get '/about', to: 'pages#about'
  get '/locations', to: 'pages#shops'

  #RIDES & EVENTS
  resources :rides do
    resources :comments, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
