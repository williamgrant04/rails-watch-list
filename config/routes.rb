Rails.application.routes.draw do
  # LISTS
  root "lists#index"
  get "lists", to: "lists#to_root" # Just redirect to the root path
  get "lists/new", to: "lists#new"
  get "lists/:id", to: "lists#show", as: :list
  post "lists", to: "lists#create"
end
