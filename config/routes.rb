Rails.application.routes.draw do
  resources :books
  resources :users, only: [:show, :index, :edit, :update]
  root 'homes#top'
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
