Rails.application.routes.draw do
  root "articles#index"

  get 'cards/index'
  resources :cards
  # , only: [:index, :show] do
  #   #movies/search/(:format)
  #   # collection do
  #   #   get "search"
  #   # end

  #   get '/page/:page', action: :index, on: :collection
  # end

  get "/articles", to: "articles#index"
  get "/about", to: "about#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
