Rails.application.routes.draw do
  # LISTS
  root "lists#index"
  get "/lists", to: "lists#index" # Just redirect to the root path

  get "/lists/new", to: "lists#new", as: :new_list
  get "/lists/:id", to: "lists#show", as: :list
  post "/lists", to: "lists#create"

  get "/lists/:id/bookmarks/new", to: "bookmarks#new", as: :bookmarks
  post "/lists/:id/bookmarks", to: "bookmarks#create", as: :list_bookmarks
  delete "/bookmark/:id", to: "bookmarks#destroy", as: :delete_bookmark
end
