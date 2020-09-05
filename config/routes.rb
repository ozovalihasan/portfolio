Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :projects, only: [:new, :create, :edit,:update]
  root to: "users#home"
end
