Rails.application.routes.draw do
  resources :requests, :reviews
  resources :tshirts
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 root "tshirts#index"
 get "filter", to: "tshirts#filter"
 get "coords", to: "tshirts#coords"
end
