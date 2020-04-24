# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :todo_lists
  get "complete-todo/:id" => "todo_lists#complete_todo", as: "complete_todo"
  get "signup" => "users#new", as: "signup"
  get "login" => "sessions#new", as: "login"
  get "logout" => "sessions#destroy", as: "logout"
  root "todo_lists#index"
end
