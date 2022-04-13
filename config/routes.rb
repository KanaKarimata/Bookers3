Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # get 'homes/top'
  get "homes/about" => "homes#about", as: "about"
  devise_for :users
  root to: 'homes#top'

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
