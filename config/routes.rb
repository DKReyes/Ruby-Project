Rails.application.routes.draw do
  get 'cards/index'
  get 'cards/show'
  get 'card/index'
  get 'card/show'
  root "articles#index"

  get "/articles", to: "articles#index"
  get "/about", to: "about#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
