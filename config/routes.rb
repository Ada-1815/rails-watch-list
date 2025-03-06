Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # voir les listes
  get 'lists', to: 'lists#index'

  # créer une liste
  get "lists/new", to: "lists#new"
  post "lists", to: "lists#create"

  # accéder à une liste
  get "lists/:id", to: "lists#show", as: :list

  # créer un bookmark
   get "bookmarks/new", to: "bookmarks#new"
  post "bookmarks", to: "bookmarks#create"

  # effacer un bookmark
  delete "bookmarks/:id", to: "bookmarks#destroy"
end
