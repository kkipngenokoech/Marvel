Rails.application.routes.draw do
  resources :tshirts
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 root "tshirts#index"
end
