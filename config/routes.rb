Rails.application.routes.draw do
  root 'dogs#index'

  get "users", to: "users#index"
  get "users/new", to: "users#new"
  get "users/:id", to: "users#show", as: :user
  post "users", to: "users#create"

  get 'dogs' => 'dogs#index', :as => :dogs_index
  get 'dogs/new' => 'dogs#new', :as => :new_dog
  post 'dogs/new' => 'dogs#create', :as => :create_dog
  get 'dogs/:id' => 'dogs#show', :as => :show_dog
end
